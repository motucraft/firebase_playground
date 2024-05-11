import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_playground/firestore_odm/firestore/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class DialogPage<T> extends Page<T> {
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute<T>(
      context: context,
      settings: this,
      builder: builder,
      anchorPoint: anchorPoint,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      themes: themes,
    );
  }
}

class InsertDialog extends HookConsumerWidget {
  const InsertDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widthRatio = MediaQuery.sizeOf(context).width / 375;

    final name = useState('');
    final capital = useState('');
    final population = useState(0);

    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300 * widthRatio),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Add Country'),
              TextField(
                decoration: const InputDecoration(hintText: 'country'),
                onChanged: (value) => name.value = value,
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'capital'),
                onChanged: (value) => capital.value = value,
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(hintText: 'population'),
                onChanged: (value) => population.value = int.parse(value),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  child: const Text('insert'),
                  onPressed: () async {
                    final id = const Uuid().v4();
                    await FirebaseFirestore.instance.runTransaction((transaction) async {
                      transaction.set(
                        countryRef(id: id).reference,
                        Country(
                          id: id,
                          name: name.value,
                          capital: capital.value,
                          population: population.value,
                        ),
                      );

                      transaction.update(countryRef(id: id).reference, {
                        'createdAt': FieldValue.serverTimestamp(),
                        'updatedAt': FieldValue.serverTimestamp(),
                      });
                    });

                    if (context.mounted) {
                      context.pop();
                    }
                  },
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: context.pop,
                  child: const Text('close'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditDialog extends HookConsumerWidget {
  final Country country;

  const EditDialog({super.key, required this.country});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widthRatio = MediaQuery.sizeOf(context).width / 375;

    final population = useState(0);

    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300 * widthRatio),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Edit Country'),
              const SizedBox(height: 8),
              Align(alignment: Alignment.centerLeft, child: Text(country.name)),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(hintText: 'population'),
                onChanged: (value) => population.value = int.parse(value),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  onPressed: () async {
                    await FirebaseFirestore.instance.runTransaction((transaction) async {
                      transaction.update(countryRef(id: country.id).reference, {
                        'population': population.value,
                      });

                      transaction.update(countryRef(id: country.id).reference, {
                        'updatedAt': FieldValue.serverTimestamp(),
                      });
                    });

                    if (context.mounted) {
                      context.pop();
                    }
                  },
                  child: const Text('update'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: context.pop,
                  child: const Text('close'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteDialog extends StatelessWidget {
  final Country country;

  const DeleteDialog({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    final widthRatio = MediaQuery.sizeOf(context).width / 375;
    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300 * widthRatio),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Are you sure you want to delete?'),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  onPressed: () async {
                    await FirebaseFirestore.instance.runTransaction((transaction) async {
                      transaction.delete(countryRef(id: country.id).reference);
                    });

                    if (context.mounted) {
                      context.pop();
                    }
                  },
                  child: const Text('delete'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: context.pop,
                  child: const Text('cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
