// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CountryCollectionReference
    implements
        CountryQuery,
        FirestoreCollectionReference<Country, CountryQuerySnapshot> {
  factory CountryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CountryCollectionReference;

  static Country fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Country.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Country value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Country> get reference;

  @override
  CountryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CountryDocumentReference> add(Country value);
}

class _$CountryCollectionReference extends _$CountryQuery
    implements CountryCollectionReference {
  factory _$CountryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CountryCollectionReference._(
      firestore.collection('countries').withConverter(
            fromFirestore: CountryCollectionReference.fromFirestore,
            toFirestore: CountryCollectionReference.toFirestore,
          ),
    );
  }

  _$CountryCollectionReference._(
    CollectionReference<Country> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Country> get reference =>
      super.reference as CollectionReference<Country>;

  @override
  CountryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CountryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CountryDocumentReference> add(Country value) {
    return reference.add(value).then((ref) => CountryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CountryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CountryDocumentReference
    extends FirestoreDocumentReference<Country, CountryDocumentSnapshot> {
  factory CountryDocumentReference(DocumentReference<Country> reference) =
      _$CountryDocumentReference;

  DocumentReference<Country> get reference;

  /// A reference to the [CountryCollectionReference] containing this document.
  CountryCollectionReference get parent {
    return _$CountryCollectionReference(reference.firestore);
  }

  late final CityCollectionReference cities = _$CityCollectionReference(
    reference,
  );

  @override
  Stream<CountryDocumentSnapshot> snapshots();

  @override
  Future<CountryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Country model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue capitalFieldValue,
    FieldValue populationFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Country model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue capitalFieldValue,
    FieldValue populationFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Country model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue capitalFieldValue,
    FieldValue populationFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String capital,
    FieldValue capitalFieldValue,
    int population,
    FieldValue populationFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String capital,
    FieldValue capitalFieldValue,
    int population,
    FieldValue populationFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    String capital,
    FieldValue capitalFieldValue,
    int population,
    FieldValue populationFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$CountryDocumentReference
    extends FirestoreDocumentReference<Country, CountryDocumentSnapshot>
    implements CountryDocumentReference {
  _$CountryDocumentReference(this.reference);

  @override
  final DocumentReference<Country> reference;

  /// A reference to the [CountryCollectionReference] containing this document.
  CountryCollectionReference get parent {
    return _$CountryCollectionReference(reference.firestore);
  }

  late final CityCollectionReference cities = _$CityCollectionReference(
    reference,
  );

  @override
  Stream<CountryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CountryDocumentSnapshot._);
  }

  @override
  Future<CountryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CountryDocumentSnapshot._);
  }

  @override
  Future<CountryDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(CountryDocumentSnapshot._);
  }

  Future<void> set(
    Country model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? capitalFieldValue,
    FieldValue? populationFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Country model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? capitalFieldValue,
    FieldValue? populationFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Country model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? capitalFieldValue,
    FieldValue? populationFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? capital = _sentinel,
    FieldValue? capitalFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      capital == _sentinel || capitalFieldValue == null,
      "Cannot specify both capital and capitalFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CountryImplFieldMap['id']!:
            _$$CountryImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CountryImplFieldMap['name']!:
            _$$CountryImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capital != _sentinel)
        _$$CountryImplFieldMap['capital']!:
            _$$CountryImplPerFieldToJson.capital(capital as String),
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (population != _sentinel)
        _$$CountryImplFieldMap['population']!:
            _$$CountryImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAt != _sentinel)
        _$$CountryImplFieldMap['createdAt']!:
            _$$CountryImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$CountryImplFieldMap['updatedAt']!:
            _$$CountryImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? capital = _sentinel,
    FieldValue? capitalFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      capital == _sentinel || capitalFieldValue == null,
      "Cannot specify both capital and capitalFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CountryImplFieldMap['id']!:
            _$$CountryImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CountryImplFieldMap['name']!:
            _$$CountryImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capital != _sentinel)
        _$$CountryImplFieldMap['capital']!:
            _$$CountryImplPerFieldToJson.capital(capital as String),
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (population != _sentinel)
        _$$CountryImplFieldMap['population']!:
            _$$CountryImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAt != _sentinel)
        _$$CountryImplFieldMap['createdAt']!:
            _$$CountryImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$CountryImplFieldMap['updatedAt']!:
            _$$CountryImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? capital = _sentinel,
    FieldValue? capitalFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      capital == _sentinel || capitalFieldValue == null,
      "Cannot specify both capital and capitalFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CountryImplFieldMap['id']!:
            _$$CountryImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CountryImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CountryImplFieldMap['name']!:
            _$$CountryImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$$CountryImplFieldMap['name']!: nameFieldValue,
      if (capital != _sentinel)
        _$$CountryImplFieldMap['capital']!:
            _$$CountryImplPerFieldToJson.capital(capital as String),
      if (capitalFieldValue != null)
        _$$CountryImplFieldMap['capital']!: capitalFieldValue,
      if (population != _sentinel)
        _$$CountryImplFieldMap['population']!:
            _$$CountryImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CountryImplFieldMap['population']!: populationFieldValue,
      if (createdAt != _sentinel)
        _$$CountryImplFieldMap['createdAt']!:
            _$$CountryImplPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$$CountryImplFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$$CountryImplFieldMap['updatedAt']!:
            _$$CountryImplPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$$CountryImplFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CountryQuery
    implements QueryReference<Country, CountryQuerySnapshot> {
  @override
  CountryQuery limit(int limit);

  @override
  CountryQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CountryQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereCapital({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CountryQuery wherePopulation({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  CountryQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CountryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByCapital({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByPopulation({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });

  CountryQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  });
}

class _$CountryQuery extends QueryReference<Country, CountryQuerySnapshot>
    implements CountryQuery {
  _$CountryQuery(
    this._collection, {
    required Query<Country> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CountryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(CountryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CountryQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CountryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CountryQuery limit(int limit) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery limitToLast(int limit) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson.id(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson.id(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$CountryImplPerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$CountryImplPerFieldToJson.name(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereCapital({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['capital']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.capital(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.capital(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.capital(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .capital(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.capital(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .capital(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$CountryImplPerFieldToJson.capital(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.capital(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery wherePopulation({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['population']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.population(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.population(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.population(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .population(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.population(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .population(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$$CountryImplPerFieldToJson.population(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.population(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.createdAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.createdAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$$CountryImplPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery whereUpdatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CountryImplFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CountryImplPerFieldToJson.updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$$CountryImplPerFieldToJson.updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CountryImplPerFieldToJson.updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CountryImplPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$$CountryImplPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CountryImplPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CountryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$$CountryImplFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CountryImplFieldMap['name']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByCapital({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CountryImplFieldMap['capital']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByPopulation({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CountryImplFieldMap['population']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CountryImplFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CountryQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CountryDocumentSnapshot? startAtDocument,
    CountryDocumentSnapshot? endAtDocument,
    CountryDocumentSnapshot? endBeforeDocument,
    CountryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CountryImplFieldMap['updatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CountryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CountryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CountryDocumentSnapshot extends FirestoreDocumentSnapshot<Country> {
  CountryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Country> snapshot;

  @override
  CountryDocumentReference get reference {
    return CountryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Country? data;
}

class CountryQuerySnapshot
    extends FirestoreQuerySnapshot<Country, CountryQueryDocumentSnapshot> {
  CountryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CountryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Country> snapshot,
  ) {
    final docs = snapshot.docs.map(CountryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CountryDocumentSnapshot._,
      );
    }).toList();

    return CountryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CountryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CountryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CountryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Country> snapshot;

  @override
  final List<CountryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CountryDocumentSnapshot>> docChanges;
}

class CountryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Country>
    implements CountryDocumentSnapshot {
  CountryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Country> snapshot;

  @override
  final Country data;

  @override
  CountryDocumentReference get reference {
    return CountryDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CityCollectionReference
    implements
        CityQuery,
        FirestoreCollectionReference<City, CityQuerySnapshot> {
  factory CityCollectionReference(
    DocumentReference<Country> parent,
  ) = _$CityCollectionReference;

  static City fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return City.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    City value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<City> get reference;

  /// A reference to the containing [CountryDocumentReference] if this is a subcollection.
  CountryDocumentReference get parent;

  @override
  CityDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CityDocumentReference> add(City value);
}

class _$CityCollectionReference extends _$CityQuery
    implements CityCollectionReference {
  factory _$CityCollectionReference(
    DocumentReference<Country> parent,
  ) {
    return _$CityCollectionReference._(
      CountryDocumentReference(parent),
      parent.collection('cities').withConverter(
            fromFirestore: CityCollectionReference.fromFirestore,
            toFirestore: CityCollectionReference.toFirestore,
          ),
    );
  }

  _$CityCollectionReference._(
    this.parent,
    CollectionReference<City> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final CountryDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<City> get reference =>
      super.reference as CollectionReference<City>;

  @override
  CityDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CityDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CityDocumentReference> add(City value) {
    return reference.add(value).then((ref) => CityDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CityCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CityDocumentReference
    extends FirestoreDocumentReference<City, CityDocumentSnapshot> {
  factory CityDocumentReference(DocumentReference<City> reference) =
      _$CityDocumentReference;

  DocumentReference<City> get reference;

  /// A reference to the [CityCollectionReference] containing this document.
  CityCollectionReference get parent {
    return _$CityCollectionReference(
      reference.parent.parent!.withConverter<Country>(
        fromFirestore: CountryCollectionReference.fromFirestore,
        toFirestore: CountryCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CityDocumentSnapshot> snapshots();

  @override
  Future<CityDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    City model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue populationFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    City model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue populationFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    City model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue populationFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    int population,
    FieldValue populationFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    int population,
    FieldValue populationFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String id,
    FieldValue idFieldValue,
    String name,
    FieldValue nameFieldValue,
    int population,
    FieldValue populationFieldValue,
  });
}

class _$CityDocumentReference
    extends FirestoreDocumentReference<City, CityDocumentSnapshot>
    implements CityDocumentReference {
  _$CityDocumentReference(this.reference);

  @override
  final DocumentReference<City> reference;

  /// A reference to the [CityCollectionReference] containing this document.
  CityCollectionReference get parent {
    return _$CityCollectionReference(
      reference.parent.parent!.withConverter<Country>(
        fromFirestore: CountryCollectionReference.fromFirestore,
        toFirestore: CountryCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CityDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CityDocumentSnapshot._);
  }

  @override
  Future<CityDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CityDocumentSnapshot._);
  }

  @override
  Future<CityDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(CityDocumentSnapshot._);
  }

  Future<void> set(
    City model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? populationFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    City model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? populationFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    City model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? populationFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CityImplFieldMap['id']!: _$$CityImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CityImplFieldMap['name']!:
            _$$CityImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (population != _sentinel)
        _$$CityImplFieldMap['population']!:
            _$$CityImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CityImplFieldMap['id']!: _$$CityImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CityImplFieldMap['name']!:
            _$$CityImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (population != _sentinel)
        _$$CityImplFieldMap['population']!:
            _$$CityImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? population = _sentinel,
    FieldValue? populationFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      population == _sentinel || populationFieldValue == null,
      "Cannot specify both population and populationFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$$CityImplFieldMap['id']!: _$$CityImplPerFieldToJson.id(id as String),
      if (idFieldValue != null) _$$CityImplFieldMap['id']!: idFieldValue,
      if (name != _sentinel)
        _$$CityImplFieldMap['name']!:
            _$$CityImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$$CityImplFieldMap['name']!: nameFieldValue,
      if (population != _sentinel)
        _$$CityImplFieldMap['population']!:
            _$$CityImplPerFieldToJson.population(population as int),
      if (populationFieldValue != null)
        _$$CityImplFieldMap['population']!: populationFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CityDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CityQuery implements QueryReference<City, CityQuerySnapshot> {
  @override
  CityQuery limit(int limit);

  @override
  CityQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CityQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CityQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CityQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CityQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CityQuery wherePopulation({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CityQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  });

  CityQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  });

  CityQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  });

  CityQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  });

  CityQuery orderByPopulation({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  });
}

class _$CityQuery extends QueryReference<City, CityQuerySnapshot>
    implements CityQuery {
  _$CityQuery(
    this._collection, {
    required Query<City> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CityQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(CityQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CityQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CityQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CityQuery limit(int limit) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery limitToLast(int limit) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery whereId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CityImplFieldMap['id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$CityImplPerFieldToJson.id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson.id(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CityImplPerFieldToJson.id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson.id(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$CityImplPerFieldToJson.id(e)),
        whereNotIn: whereNotIn?.map((e) => _$$CityImplPerFieldToJson.id(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CityImplFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$$CityImplPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CityImplPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$$CityImplPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$$CityImplPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery wherePopulation({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$CityImplFieldMap['population']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.population(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$$CityImplPerFieldToJson.population(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$$CityImplPerFieldToJson.population(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson.population(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$CityImplPerFieldToJson.population(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$CityImplPerFieldToJson
                .population(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$$CityImplPerFieldToJson.population(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$CityImplPerFieldToJson.population(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CityQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CityQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CityQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$$CityImplFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CityQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$$CityImplFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CityQuery orderByPopulation({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CityDocumentSnapshot? startAtDocument,
    CityDocumentSnapshot? endAtDocument,
    CityDocumentSnapshot? endBeforeDocument,
    CityDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$CityImplFieldMap['population']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CityQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CityQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CityDocumentSnapshot extends FirestoreDocumentSnapshot<City> {
  CityDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<City> snapshot;

  @override
  CityDocumentReference get reference {
    return CityDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final City? data;
}

class CityQuerySnapshot
    extends FirestoreQuerySnapshot<City, CityQueryDocumentSnapshot> {
  CityQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CityQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<City> snapshot,
  ) {
    final docs = snapshot.docs.map(CityQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CityDocumentSnapshot._,
      );
    }).toList();

    return CityQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CityDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CityDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CityDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<City> snapshot;

  @override
  final List<CityQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CityDocumentSnapshot>> docChanges;
}

class CityQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<City>
    implements CityDocumentSnapshot {
  CityQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<City> snapshot;

  @override
  final City data;

  @override
  CityDocumentReference get reference {
    return CityDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      capital: json['capital'] as String,
      population: (json['population'] as num).toInt(),
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], const TimestampConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], const TimestampConverter().fromJson),
    );

const _$$CountryImplFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'capital': 'capital',
  'population': 'population',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
};

// ignore: unused_element
abstract class _$$CountryImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? capital(String instance) => instance;
  // ignore: unused_element
  static Object? population(int instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const TimestampConverter().toJson);
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const TimestampConverter().toJson);
}

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capital': instance.capital,
      'population': instance.population,
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const TimestampConverter().toJson),
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      population: (json['population'] as num).toInt(),
    );

const _$$CityImplFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'population': 'population',
};

// ignore: unused_element
abstract class _$$CityImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? population(int instance) => instance;
}

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'population': instance.population,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countriesNotifierHash() => r'0d40fce762be7365360e843dfa00eb4b936fdd43';

/// See also [CountriesNotifier].
@ProviderFor(CountriesNotifier)
final countriesNotifierProvider = AutoDisposeStreamNotifierProvider<
    CountriesNotifier, List<Country>>.internal(
  CountriesNotifier.new,
  name: r'countriesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countriesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CountriesNotifier = AutoDisposeStreamNotifier<List<Country>>;
String _$citiesNotifierHash() => r'e950d03f52eb0fbb01a7ec5f6ebce4471a693bb5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CitiesNotifier
    extends BuildlessAutoDisposeStreamNotifier<List<City>> {
  late final String countryId;

  Stream<List<City>> build(
    String countryId,
  );
}

/// See also [CitiesNotifier].
@ProviderFor(CitiesNotifier)
const citiesNotifierProvider = CitiesNotifierFamily();

/// See also [CitiesNotifier].
class CitiesNotifierFamily extends Family {
  /// See also [CitiesNotifier].
  const CitiesNotifierFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'citiesNotifierProvider';

  /// See also [CitiesNotifier].
  CitiesNotifierProvider call(
    String countryId,
  ) {
    return CitiesNotifierProvider(
      countryId,
    );
  }

  @visibleForOverriding
  @override
  CitiesNotifierProvider getProviderOverride(
    covariant CitiesNotifierProvider provider,
  ) {
    return call(
      provider.countryId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(CitiesNotifier Function() create) {
    return _$CitiesNotifierFamilyOverride(this, create);
  }
}

class _$CitiesNotifierFamilyOverride implements FamilyOverride {
  _$CitiesNotifierFamilyOverride(this.overriddenFamily, this.create);

  final CitiesNotifier Function() create;

  @override
  final CitiesNotifierFamily overriddenFamily;

  @override
  CitiesNotifierProvider getProviderOverride(
    covariant CitiesNotifierProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [CitiesNotifier].
class CitiesNotifierProvider
    extends AutoDisposeStreamNotifierProviderImpl<CitiesNotifier, List<City>> {
  /// See also [CitiesNotifier].
  CitiesNotifierProvider(
    String countryId,
  ) : this._internal(
          () => CitiesNotifier()..countryId = countryId,
          from: citiesNotifierProvider,
          name: r'citiesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$citiesNotifierHash,
          dependencies: CitiesNotifierFamily._dependencies,
          allTransitiveDependencies:
              CitiesNotifierFamily._allTransitiveDependencies,
          countryId: countryId,
        );

  CitiesNotifierProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.countryId,
  }) : super.internal();

  final String countryId;

  @override
  Stream<List<City>> runNotifierBuild(
    covariant CitiesNotifier notifier,
  ) {
    return notifier.build(
      countryId,
    );
  }

  @override
  Override overrideWith(CitiesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CitiesNotifierProvider._internal(
        () => create()..countryId = countryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        countryId: countryId,
      ),
    );
  }

  @override
  (String,) get argument {
    return (countryId,);
  }

  @override
  AutoDisposeStreamNotifierProviderElement<CitiesNotifier, List<City>>
      createElement() {
    return _CitiesNotifierProviderElement(this);
  }

  CitiesNotifierProvider _copyWith(
    CitiesNotifier Function() create,
  ) {
    return CitiesNotifierProvider._internal(
      () => create()..countryId = countryId,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      countryId: countryId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CitiesNotifierProvider && other.countryId == countryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, countryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CitiesNotifierRef on AutoDisposeStreamNotifierProviderRef<List<City>> {
  /// The parameter `countryId` of this provider.
  String get countryId;
}

class _CitiesNotifierProviderElement
    extends AutoDisposeStreamNotifierProviderElement<CitiesNotifier, List<City>>
    with CitiesNotifierRef {
  _CitiesNotifierProviderElement(super.provider);

  @override
  String get countryId => (origin as CitiesNotifierProvider).countryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
