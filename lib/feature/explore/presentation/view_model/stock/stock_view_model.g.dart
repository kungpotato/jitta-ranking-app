// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stockViewModelHash() => r'd82cdc9874536e47168e06d14665ff8fa6b27121';

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

abstract class _$StockViewModel
    extends BuildlessAutoDisposeAsyncNotifier<StockDetail> {
  late final int stockId;

  FutureOr<StockDetail> build(
    int stockId,
  );
}

/// See also [StockViewModel].
@ProviderFor(StockViewModel)
const stockViewModelProvider = StockViewModelFamily();

/// See also [StockViewModel].
class StockViewModelFamily extends Family<AsyncValue<StockDetail>> {
  /// See also [StockViewModel].
  const StockViewModelFamily();

  /// See also [StockViewModel].
  StockViewModelProvider call(
    int stockId,
  ) {
    return StockViewModelProvider(
      stockId,
    );
  }

  @override
  StockViewModelProvider getProviderOverride(
    covariant StockViewModelProvider provider,
  ) {
    return call(
      provider.stockId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stockViewModelProvider';
}

/// See also [StockViewModel].
class StockViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StockViewModel, StockDetail> {
  /// See also [StockViewModel].
  StockViewModelProvider(
    int stockId,
  ) : this._internal(
          () => StockViewModel()..stockId = stockId,
          from: stockViewModelProvider,
          name: r'stockViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stockViewModelHash,
          dependencies: StockViewModelFamily._dependencies,
          allTransitiveDependencies:
              StockViewModelFamily._allTransitiveDependencies,
          stockId: stockId,
        );

  StockViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stockId,
  }) : super.internal();

  final int stockId;

  @override
  FutureOr<StockDetail> runNotifierBuild(
    covariant StockViewModel notifier,
  ) {
    return notifier.build(
      stockId,
    );
  }

  @override
  Override overrideWith(StockViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: StockViewModelProvider._internal(
        () => create()..stockId = stockId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stockId: stockId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<StockViewModel, StockDetail>
      createElement() {
    return _StockViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StockViewModelProvider && other.stockId == stockId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stockId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StockViewModelRef on AutoDisposeAsyncNotifierProviderRef<StockDetail> {
  /// The parameter `stockId` of this provider.
  int get stockId;
}

class _StockViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StockViewModel, StockDetail>
    with StockViewModelRef {
  _StockViewModelProviderElement(super.provider);

  @override
  int get stockId => (origin as StockViewModelProvider).stockId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
