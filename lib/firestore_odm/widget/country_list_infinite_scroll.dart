import 'package:flutter/material.dart';

class CountryListInfiniteScroll extends StatelessWidget {
  const CountryListInfiniteScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinitely scrolling Countries')),
    );
  }
}
