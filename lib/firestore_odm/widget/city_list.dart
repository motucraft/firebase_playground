import 'package:firebase_playground/firestore_odm/firestore/country.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class CityList extends ConsumerWidget {
  final String countryId;

  const CityList({super.key, required this.countryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cities')),
      body: SafeArea(
        child: switch (ref.watch(citiesNotifierProvider(countryId))) {
          AsyncData(value: List<City> cities) => Cities(cities: cities),
          AsyncError(:final error, :final stackTrace) => SingleChildScrollView(child: Text('$error\n$stackTrace')),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}

class Cities extends StatelessWidget {
  final List<City> cities;

  const Cities({super.key, required this.cities});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cities.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) {
        final city = cities[index];
        return ListTile(
          title: Text(city.name),
          subtitle: Text('Population : ${NumberFormat('#,###.#').format(city.population)}'),
        );
      },
    );
  }
}
