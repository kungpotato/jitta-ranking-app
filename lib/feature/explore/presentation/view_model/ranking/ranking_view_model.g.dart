// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rankingViewModelHash() => r'217b17ce4e5a117944cf541f7d67c34805eefc6e';

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

abstract class _$RankingViewModel
    extends BuildlessAutoDisposeAsyncNotifier<List<StockRanking>> {
  late final String market;

  FutureOr<List<StockRanking>> build(
    String market,
  );
}

/// See also [RankingViewModel].
@ProviderFor(RankingViewModel)
const rankingViewModelProvider = RankingViewModelFamily();

/// See also [RankingViewModel].
class RankingViewModelFamily extends Family<AsyncValue<List<StockRanking>>> {
  /// See also [RankingViewModel].
  const RankingViewModelFamily();

  /// See also [RankingViewModel].
  RankingViewModelProvider call(
    String market,
  ) {
    return RankingViewModelProvider(
      market,
    );
  }

  @override
  RankingViewModelProvider getProviderOverride(
    covariant RankingViewModelProvider provider,
  ) {
    return call(
      provider.market,
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
  String? get name => r'rankingViewModelProvider';
}

/// See also [RankingViewModel].
class RankingViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RankingViewModel, List<StockRanking>> {
  /// See also [RankingViewModel].
  RankingViewModelProvider(
    String market,
  ) : this._internal(
          () => RankingViewModel()..market = market,
          from: rankingViewModelProvider,
          name: r'rankingViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rankingViewModelHash,
          dependencies: RankingViewModelFamily._dependencies,
          allTransitiveDependencies:
              RankingViewModelFamily._allTransitiveDependencies,
          market: market,
        );

  RankingViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.market,
  }) : super.internal();

  final String market;

  @override
  FutureOr<List<StockRanking>> runNotifierBuild(
    covariant RankingViewModel notifier,
  ) {
    return notifier.build(
      market,
    );
  }

  @override
  Override overrideWith(RankingViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: RankingViewModelProvider._internal(
        () => create()..market = market,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        market: market,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RankingViewModel, List<StockRanking>>
      createElement() {
    return _RankingViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RankingViewModelProvider && other.market == market;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, market.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RankingViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<List<StockRanking>> {
  /// The parameter `market` of this provider.
  String get market;
}

class _RankingViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RankingViewModel,
        List<StockRanking>> with RankingViewModelRef {
  _RankingViewModelProviderElement(super.provider);

  @override
  String get market => (origin as RankingViewModelProvider).market;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
