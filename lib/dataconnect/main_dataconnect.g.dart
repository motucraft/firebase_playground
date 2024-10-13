// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dataconnect.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routingHash() => r'081e6f6176cdf879f3c47c78f18cb46276f404f4';

/// See also [routing].
@ProviderFor(routing)
final routingProvider = AutoDisposeProvider<GoRouter>.internal(
  routing,
  name: r'routingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RoutingRef = AutoDisposeProviderRef<GoRouter>;
String _$listMovieRefHash() => r'73656e72195bfc82f8d1bf5d2506c704a311bcdc';

/// See also [listMovieRef].
@ProviderFor(listMovieRef)
final listMovieRefProvider =
    AutoDisposeProvider<QueryRef<ListMoviesData, void>>.internal(
  listMovieRef,
  name: r'listMovieRefProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listMovieRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListMovieRefRef
    = AutoDisposeProviderRef<QueryRef<ListMoviesData, void>>;
String _$moviesHash() => r'5e28fac5af82d7dc89c7c67f42b63ccc2413f621';

/// See also [movies].
@ProviderFor(movies)
final moviesProvider =
    AutoDisposeStreamProvider<QueryResult<ListMoviesData, void>>.internal(
  movies,
  name: r'moviesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MoviesRef
    = AutoDisposeStreamProviderRef<QueryResult<ListMoviesData, void>>;
String _$movieByIdHash() => r'5e4c06603e37384461ffbca4e0e918478ee3a3db';

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

/// See also [movieById].
@ProviderFor(movieById)
const movieByIdProvider = MovieByIdFamily();

/// See also [movieById].
class MovieByIdFamily extends Family {
  /// See also [movieById].
  const MovieByIdFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'movieByIdProvider';

  /// See also [movieById].
  MovieByIdProvider call({
    required String id,
  }) {
    return MovieByIdProvider(
      id: id,
    );
  }

  @visibleForOverriding
  @override
  MovieByIdProvider getProviderOverride(
    covariant MovieByIdProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<GetMovieByIdMovie?> Function(MovieByIdRef ref) create) {
    return _$MovieByIdFamilyOverride(this, create);
  }
}

class _$MovieByIdFamilyOverride implements FamilyOverride {
  _$MovieByIdFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<GetMovieByIdMovie?> Function(MovieByIdRef ref) create;

  @override
  final MovieByIdFamily overriddenFamily;

  @override
  MovieByIdProvider getProviderOverride(
    covariant MovieByIdProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [movieById].
class MovieByIdProvider extends AutoDisposeFutureProvider<GetMovieByIdMovie?> {
  /// See also [movieById].
  MovieByIdProvider({
    required String id,
  }) : this._internal(
          (ref) => movieById(
            ref as MovieByIdRef,
            id: id,
          ),
          from: movieByIdProvider,
          name: r'movieByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$movieByIdHash,
          dependencies: MovieByIdFamily._dependencies,
          allTransitiveDependencies: MovieByIdFamily._allTransitiveDependencies,
          id: id,
        );

  MovieByIdProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<GetMovieByIdMovie?> Function(MovieByIdRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MovieByIdProvider._internal(
        (ref) => create(ref as MovieByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  ({
    String id,
  }) get argument {
    return (id: id,);
  }

  @override
  AutoDisposeFutureProviderElement<GetMovieByIdMovie?> createElement() {
    return _MovieByIdProviderElement(this);
  }

  MovieByIdProvider _copyWith(
    FutureOr<GetMovieByIdMovie?> Function(MovieByIdRef ref) create,
  ) {
    return MovieByIdProvider._internal(
      (ref) => create(ref as MovieByIdRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      id: id,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MovieByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MovieByIdRef on AutoDisposeFutureProviderRef<GetMovieByIdMovie?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MovieByIdProviderElement
    extends AutoDisposeFutureProviderElement<GetMovieByIdMovie?>
    with MovieByIdRef {
  _MovieByIdProviderElement(super.provider);

  @override
  String get id => (origin as MovieByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
