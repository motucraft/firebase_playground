import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_playground/firestore_odm/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@Collection<Country>('countries')
@Collection<City>('countries/*/cities')
@freezed
class Country with _$Country {
  const factory Country({
    required String id,
    required String name,
    required String capital,
    required int population,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) => _$CountryFromJson(json);
}

final countriesRef = CountryCollectionReference();

CountryDocumentReference countryRef({required String id}) => CountryDocumentReference(countriesRef.doc(id).reference);

@freezed
class City with _$City {
  const factory City({
    required String id,
    required String name,
    required int population,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}

@riverpod
class CountriesNotifier extends _$CountriesNotifier {
  @override
  Stream<List<Country>> build() {
    return countriesRef
        .orderByPopulation(descending: true)
        .snapshots()
        .map((querySnap) => querySnap.docs.map((docSnap) => docSnap.data).toList());
  }
}

@riverpod
class CitiesNotifier extends _$CitiesNotifier {
  @override
  Stream<List<City>> build(String countryId) {
    return countryRef(id: countryId)
        .cities
        .orderByPopulation(descending: true)
        .snapshots()
        .map((querySnap) => querySnap.docs.map((docSnap) => docSnap.data).toList());
  }
}
