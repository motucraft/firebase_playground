import 'package:firebase_playground/firestore_odm/firestore/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class CountryList extends ConsumerWidget {
  const CountryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed: () => context.push('/insert-dialog'), icon: const Icon(Icons.add)),
          ),
        ],
      ),
      body: SafeArea(
        child: switch (ref.watch(countriesNotifierProvider)) {
          AsyncData(value: List<Country> countries) => Countries(countries: countries),
          AsyncError(:final error, :final stackTrace) => SingleChildScrollView(child: Text('$error\n$stackTrace')),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}

class Countries extends StatelessWidget {
  final List<Country> countries;

  const Countries({super.key, required this.countries});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: countries.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.blue),
      itemBuilder: (context, index) {
        final country = countries[index];

        return Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                icon: Icons.edit,
                label: 'Edit',
                backgroundColor: Colors.blueAccent,
                onPressed: (context) => context.push('/edit-dialog', extra: {'country': country}),
              ),
              SlidableAction(
                icon: Icons.delete,
                label: 'Delete',
                backgroundColor: Colors.redAccent,
                onPressed: (context) => context.push('/delete-dialog', extra: {'country': country}),
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
    );
  }
}
