import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_playground/firestore_odm/firestore/country.dart';
import 'package:firebase_playground/hooks/use_paging_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

class CountryListInfiniteScroll extends HookWidget {
  static const int pageSize = 10;

  const CountryListInfiniteScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final pagingController = usePagingController<QueryDocumentSnapshot?, Country>(
      firstPageKey: null,
      onPageRequest: (QueryDocumentSnapshot? pageKey, pagingController) async {
        final QuerySnapshot querySnapshot = pageKey == null
            ? await FirebaseFirestore.instance
                .collection('countries')
                .limit(pageSize)
                .orderBy('population', descending: true)
                .get()
            : await FirebaseFirestore.instance
                .collection('countries')
                .limit(pageSize)
                .orderBy('population', descending: true)
                // DocumentSnapshotをクエリカーソルの開始点として利用する
                .startAfterDocument(pageKey)
                .get();

        await Future.delayed(const Duration(seconds: 1));

        final List<Country> countries = querySnapshot.docs
            .map((queryDocSnap) => Country.fromJson(queryDocSnap.data() as Map<String, Object?>))
            .toList();

        final lastDocumentSnapshot = querySnapshot.docs.isNotEmpty ? querySnapshot.docs.last : null;

        if (countries.isEmpty || countries.length < pageSize) {
          // 最終ページ
          pagingController.appendLastPage(countries);
        } else {
          pagingController.appendPage(countries, lastDocumentSnapshot);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinitely scrolling Countries'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed: () => pagingController.refresh(), icon: const Icon(Icons.refresh)),
          ),
        ],
      ),
      body: PagedListView<QueryDocumentSnapshot?, Country>.separated(
        pagingController: pagingController,
        separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.grey),
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, country, index) {
            return Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    icon: Icons.edit,
                    label: 'Edit',
                    backgroundColor: Colors.blueAccent,
                    onPressed: (context) => context.push('/edit-dialog', extra: country),
                  ),
                  SlidableAction(
                    icon: Icons.delete,
                    label: 'Delete',
                    backgroundColor: Colors.redAccent,
                    onPressed: (context) => context.push('/delete-dialog', extra: country),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(country.name),
                leading: Text('${index + 1}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Capital : ${country.capital}'),
                    Text('Population : ${NumberFormat('#,###.#').format(country.population / 1000000)}M'),
                  ],
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.pushNamed('cities', pathParameters: {'id': country.id}),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.push('/insert-dialog'),
      ),
    );
  }
}
