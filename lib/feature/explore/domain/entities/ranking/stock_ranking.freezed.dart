// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockRanking _$StockRankingFromJson(Map<String, dynamic> json) {
  return _StockRanking.fromJson(json);
}

/// @nodoc
mixin _$StockRanking {
  String get title => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get stockId => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get market => throw _privateConstructorUsedError;
  double get jittaScore => throw _privateConstructorUsedError;
  double get latestLossChance => throw _privateConstructorUsedError;
  double get latestPrice => throw _privateConstructorUsedError;
  LatestPriceDiff get latestPriceDiff => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  double get jittaRankScore => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  Sector get sector => throw _privateConstructorUsedError;
  String? get nativeName => throw _privateConstructorUsedError;

  /// Serializes this StockRanking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockRankingCopyWith<StockRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockRankingCopyWith<$Res> {
  factory $StockRankingCopyWith(
          StockRanking value, $Res Function(StockRanking) then) =
      _$StockRankingCopyWithImpl<$Res, StockRanking>;
  @useResult
  $Res call(
      {String title,
      String symbol,
      int stockId,
      int rank,
      String status,
      String name,
      String market,
      double jittaScore,
      double latestLossChance,
      double latestPrice,
      LatestPriceDiff latestPriceDiff,
      String industry,
      double jittaRankScore,
      String currency,
      String exchange,
      Sector sector,
      String? nativeName});

  $LatestPriceDiffCopyWith<$Res> get latestPriceDiff;
  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class _$StockRankingCopyWithImpl<$Res, $Val extends StockRanking>
    implements $StockRankingCopyWith<$Res> {
  _$StockRankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? symbol = null,
    Object? stockId = null,
    Object? rank = null,
    Object? status = null,
    Object? name = null,
    Object? market = null,
    Object? jittaScore = null,
    Object? latestLossChance = null,
    Object? latestPrice = null,
    Object? latestPriceDiff = null,
    Object? industry = null,
    Object? jittaRankScore = null,
    Object? currency = null,
    Object? exchange = null,
    Object? sector = null,
    Object? nativeName = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as double,
      latestLossChance: null == latestLossChance
          ? _value.latestLossChance
          : latestLossChance // ignore: cast_nullable_to_non_nullable
              as double,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      latestPriceDiff: null == latestPriceDiff
          ? _value.latestPriceDiff
          : latestPriceDiff // ignore: cast_nullable_to_non_nullable
              as LatestPriceDiff,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      jittaRankScore: null == jittaRankScore
          ? _value.jittaRankScore
          : jittaRankScore // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      nativeName: freezed == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatestPriceDiffCopyWith<$Res> get latestPriceDiff {
    return $LatestPriceDiffCopyWith<$Res>(_value.latestPriceDiff, (value) {
      return _then(_value.copyWith(latestPriceDiff: value) as $Val);
    });
  }

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get sector {
    return $SectorCopyWith<$Res>(_value.sector, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockRankingImplCopyWith<$Res>
    implements $StockRankingCopyWith<$Res> {
  factory _$$StockRankingImplCopyWith(
          _$StockRankingImpl value, $Res Function(_$StockRankingImpl) then) =
      __$$StockRankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String symbol,
      int stockId,
      int rank,
      String status,
      String name,
      String market,
      double jittaScore,
      double latestLossChance,
      double latestPrice,
      LatestPriceDiff latestPriceDiff,
      String industry,
      double jittaRankScore,
      String currency,
      String exchange,
      Sector sector,
      String? nativeName});

  @override
  $LatestPriceDiffCopyWith<$Res> get latestPriceDiff;
  @override
  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class __$$StockRankingImplCopyWithImpl<$Res>
    extends _$StockRankingCopyWithImpl<$Res, _$StockRankingImpl>
    implements _$$StockRankingImplCopyWith<$Res> {
  __$$StockRankingImplCopyWithImpl(
      _$StockRankingImpl _value, $Res Function(_$StockRankingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? symbol = null,
    Object? stockId = null,
    Object? rank = null,
    Object? status = null,
    Object? name = null,
    Object? market = null,
    Object? jittaScore = null,
    Object? latestLossChance = null,
    Object? latestPrice = null,
    Object? latestPriceDiff = null,
    Object? industry = null,
    Object? jittaRankScore = null,
    Object? currency = null,
    Object? exchange = null,
    Object? sector = null,
    Object? nativeName = freezed,
  }) {
    return _then(_$StockRankingImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as double,
      latestLossChance: null == latestLossChance
          ? _value.latestLossChance
          : latestLossChance // ignore: cast_nullable_to_non_nullable
              as double,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      latestPriceDiff: null == latestPriceDiff
          ? _value.latestPriceDiff
          : latestPriceDiff // ignore: cast_nullable_to_non_nullable
              as LatestPriceDiff,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      jittaRankScore: null == jittaRankScore
          ? _value.jittaRankScore
          : jittaRankScore // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      nativeName: freezed == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockRankingImpl implements _StockRanking {
  const _$StockRankingImpl(
      {required this.title,
      required this.symbol,
      required this.stockId,
      required this.rank,
      required this.status,
      required this.name,
      required this.market,
      required this.jittaScore,
      required this.latestLossChance,
      required this.latestPrice,
      required this.latestPriceDiff,
      required this.industry,
      required this.jittaRankScore,
      required this.currency,
      required this.exchange,
      required this.sector,
      this.nativeName});

  factory _$StockRankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockRankingImplFromJson(json);

  @override
  final String title;
  @override
  final String symbol;
  @override
  final int stockId;
  @override
  final int rank;
  @override
  final String status;
  @override
  final String name;
  @override
  final String market;
  @override
  final double jittaScore;
  @override
  final double latestLossChance;
  @override
  final double latestPrice;
  @override
  final LatestPriceDiff latestPriceDiff;
  @override
  final String industry;
  @override
  final double jittaRankScore;
  @override
  final String currency;
  @override
  final String exchange;
  @override
  final Sector sector;
  @override
  final String? nativeName;

  @override
  String toString() {
    return 'StockRanking(title: $title, symbol: $symbol, stockId: $stockId, rank: $rank, status: $status, name: $name, market: $market, jittaScore: $jittaScore, latestLossChance: $latestLossChance, latestPrice: $latestPrice, latestPriceDiff: $latestPriceDiff, industry: $industry, jittaRankScore: $jittaRankScore, currency: $currency, exchange: $exchange, sector: $sector, nativeName: $nativeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockRankingImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.jittaScore, jittaScore) ||
                other.jittaScore == jittaScore) &&
            (identical(other.latestLossChance, latestLossChance) ||
                other.latestLossChance == latestLossChance) &&
            (identical(other.latestPrice, latestPrice) ||
                other.latestPrice == latestPrice) &&
            (identical(other.latestPriceDiff, latestPriceDiff) ||
                other.latestPriceDiff == latestPriceDiff) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.jittaRankScore, jittaRankScore) ||
                other.jittaRankScore == jittaRankScore) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.nativeName, nativeName) ||
                other.nativeName == nativeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      symbol,
      stockId,
      rank,
      status,
      name,
      market,
      jittaScore,
      latestLossChance,
      latestPrice,
      latestPriceDiff,
      industry,
      jittaRankScore,
      currency,
      exchange,
      sector,
      nativeName);

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockRankingImplCopyWith<_$StockRankingImpl> get copyWith =>
      __$$StockRankingImplCopyWithImpl<_$StockRankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockRankingImplToJson(
      this,
    );
  }
}

abstract class _StockRanking implements StockRanking {
  const factory _StockRanking(
      {required final String title,
      required final String symbol,
      required final int stockId,
      required final int rank,
      required final String status,
      required final String name,
      required final String market,
      required final double jittaScore,
      required final double latestLossChance,
      required final double latestPrice,
      required final LatestPriceDiff latestPriceDiff,
      required final String industry,
      required final double jittaRankScore,
      required final String currency,
      required final String exchange,
      required final Sector sector,
      final String? nativeName}) = _$StockRankingImpl;

  factory _StockRanking.fromJson(Map<String, dynamic> json) =
      _$StockRankingImpl.fromJson;

  @override
  String get title;
  @override
  String get symbol;
  @override
  int get stockId;
  @override
  int get rank;
  @override
  String get status;
  @override
  String get name;
  @override
  String get market;
  @override
  double get jittaScore;
  @override
  double get latestLossChance;
  @override
  double get latestPrice;
  @override
  LatestPriceDiff get latestPriceDiff;
  @override
  String get industry;
  @override
  double get jittaRankScore;
  @override
  String get currency;
  @override
  String get exchange;
  @override
  Sector get sector;
  @override
  String? get nativeName;

  /// Create a copy of StockRanking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockRankingImplCopyWith<_$StockRankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LatestPriceDiff _$LatestPriceDiffFromJson(Map<String, dynamic> json) {
  return _LatestPriceDiff.fromJson(json);
}

/// @nodoc
mixin _$LatestPriceDiff {
  String get percent => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this LatestPriceDiff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LatestPriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatestPriceDiffCopyWith<LatestPriceDiff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestPriceDiffCopyWith<$Res> {
  factory $LatestPriceDiffCopyWith(
          LatestPriceDiff value, $Res Function(LatestPriceDiff) then) =
      _$LatestPriceDiffCopyWithImpl<$Res, LatestPriceDiff>;
  @useResult
  $Res call({String percent, String type, double value});
}

/// @nodoc
class _$LatestPriceDiffCopyWithImpl<$Res, $Val extends LatestPriceDiff>
    implements $LatestPriceDiffCopyWith<$Res> {
  _$LatestPriceDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatestPriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatestPriceDiffImplCopyWith<$Res>
    implements $LatestPriceDiffCopyWith<$Res> {
  factory _$$LatestPriceDiffImplCopyWith(_$LatestPriceDiffImpl value,
          $Res Function(_$LatestPriceDiffImpl) then) =
      __$$LatestPriceDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String percent, String type, double value});
}

/// @nodoc
class __$$LatestPriceDiffImplCopyWithImpl<$Res>
    extends _$LatestPriceDiffCopyWithImpl<$Res, _$LatestPriceDiffImpl>
    implements _$$LatestPriceDiffImplCopyWith<$Res> {
  __$$LatestPriceDiffImplCopyWithImpl(
      _$LatestPriceDiffImpl _value, $Res Function(_$LatestPriceDiffImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestPriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$LatestPriceDiffImpl(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestPriceDiffImpl implements _LatestPriceDiff {
  const _$LatestPriceDiffImpl(
      {required this.percent, required this.type, required this.value});

  factory _$LatestPriceDiffImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestPriceDiffImplFromJson(json);

  @override
  final String percent;
  @override
  final String type;
  @override
  final double value;

  @override
  String toString() {
    return 'LatestPriceDiff(percent: $percent, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestPriceDiffImpl &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, percent, type, value);

  /// Create a copy of LatestPriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestPriceDiffImplCopyWith<_$LatestPriceDiffImpl> get copyWith =>
      __$$LatestPriceDiffImplCopyWithImpl<_$LatestPriceDiffImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestPriceDiffImplToJson(
      this,
    );
  }
}

abstract class _LatestPriceDiff implements LatestPriceDiff {
  const factory _LatestPriceDiff(
      {required final String percent,
      required final String type,
      required final double value}) = _$LatestPriceDiffImpl;

  factory _LatestPriceDiff.fromJson(Map<String, dynamic> json) =
      _$LatestPriceDiffImpl.fromJson;

  @override
  String get percent;
  @override
  String get type;
  @override
  double get value;

  /// Create a copy of LatestPriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatestPriceDiffImplCopyWith<_$LatestPriceDiffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sector _$SectorFromJson(Map<String, dynamic> json) {
  return _Sector.fromJson(json);
}

/// @nodoc
mixin _$Sector {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Sector to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectorCopyWith<Sector> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorCopyWith<$Res> {
  factory $SectorCopyWith(Sector value, $Res Function(Sector) then) =
      _$SectorCopyWithImpl<$Res, Sector>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$SectorCopyWithImpl<$Res, $Val extends Sector>
    implements $SectorCopyWith<$Res> {
  _$SectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectorImplCopyWith<$Res> implements $SectorCopyWith<$Res> {
  factory _$$SectorImplCopyWith(
          _$SectorImpl value, $Res Function(_$SectorImpl) then) =
      __$$SectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$SectorImplCopyWithImpl<$Res>
    extends _$SectorCopyWithImpl<$Res, _$SectorImpl>
    implements _$$SectorImplCopyWith<$Res> {
  __$$SectorImplCopyWithImpl(
      _$SectorImpl _value, $Res Function(_$SectorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$SectorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectorImpl implements _Sector {
  const _$SectorImpl({required this.name, required this.id});

  factory _$SectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectorImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'Sector(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorImplCopyWith<_$SectorImpl> get copyWith =>
      __$$SectorImplCopyWithImpl<_$SectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectorImplToJson(
      this,
    );
  }
}

abstract class _Sector implements Sector {
  const factory _Sector(
      {required final String name, required final String id}) = _$SectorImpl;

  factory _Sector.fromJson(Map<String, dynamic> json) = _$SectorImpl.fromJson;

  @override
  String get name;
  @override
  String get id;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectorImplCopyWith<_$SectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
