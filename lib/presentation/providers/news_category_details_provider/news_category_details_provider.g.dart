// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_category_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsCategoryDetailsHash() =>
    r'7e97e5caa90a93cfdd7bce248dfb3184ee9ff19e';

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

/// See also [newsCategoryDetails].
@ProviderFor(newsCategoryDetails)
const newsCategoryDetailsProvider = NewsCategoryDetailsFamily();

/// See also [newsCategoryDetails].
class NewsCategoryDetailsFamily
    extends Family<AsyncValue<Result<CategoryDetails>>> {
  /// See also [newsCategoryDetails].
  const NewsCategoryDetailsFamily();

  /// See also [newsCategoryDetails].
  NewsCategoryDetailsProvider call(String categoryName) {
    return NewsCategoryDetailsProvider(categoryName);
  }

  @override
  NewsCategoryDetailsProvider getProviderOverride(
    covariant NewsCategoryDetailsProvider provider,
  ) {
    return call(provider.categoryName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsCategoryDetailsProvider';
}

/// See also [newsCategoryDetails].
class NewsCategoryDetailsProvider
    extends AutoDisposeFutureProvider<Result<CategoryDetails>> {
  /// See also [newsCategoryDetails].
  NewsCategoryDetailsProvider(String categoryName)
    : this._internal(
        (ref) =>
            newsCategoryDetails(ref as NewsCategoryDetailsRef, categoryName),
        from: newsCategoryDetailsProvider,
        name: r'newsCategoryDetailsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$newsCategoryDetailsHash,
        dependencies: NewsCategoryDetailsFamily._dependencies,
        allTransitiveDependencies:
            NewsCategoryDetailsFamily._allTransitiveDependencies,
        categoryName: categoryName,
      );

  NewsCategoryDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
  }) : super.internal();

  final String categoryName;

  @override
  Override overrideWith(
    FutureOr<Result<CategoryDetails>> Function(NewsCategoryDetailsRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsCategoryDetailsProvider._internal(
        (ref) => create(ref as NewsCategoryDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<CategoryDetails>> createElement() {
    return _NewsCategoryDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewsCategoryDetailsProvider &&
        other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NewsCategoryDetailsRef
    on AutoDisposeFutureProviderRef<Result<CategoryDetails>> {
  /// The parameter `categoryName` of this provider.
  String get categoryName;
}

class _NewsCategoryDetailsProviderElement
    extends AutoDisposeFutureProviderElement<Result<CategoryDetails>>
    with NewsCategoryDetailsRef {
  _NewsCategoryDetailsProviderElement(super.provider);

  @override
  String get categoryName =>
      (origin as NewsCategoryDetailsProvider).categoryName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
