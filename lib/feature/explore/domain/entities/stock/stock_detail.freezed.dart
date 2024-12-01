// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockDetail _$StockDetailFromJson(Map<String, dynamic> json) {
  return _StockDetail.fromJson(json);
}

/// @nodoc
mixin _$StockDetail {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this StockDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockDetailCopyWith<StockDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailCopyWith<$Res> {
  factory $StockDetailCopyWith(
          StockDetail value, $Res Function(StockDetail) then) =
      _$StockDetailCopyWithImpl<$Res, StockDetail>;
  @useResult
  $Res call({String type, String title, String symbol, String summary});
}

/// @nodoc
class _$StockDetailCopyWithImpl<$Res, $Val extends StockDetail>
    implements $StockDetailCopyWith<$Res> {
  _$StockDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? symbol = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDetailImplCopyWith<$Res>
    implements $StockDetailCopyWith<$Res> {
  factory _$$StockDetailImplCopyWith(
          _$StockDetailImpl value, $Res Function(_$StockDetailImpl) then) =
      __$$StockDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String title, String symbol, String summary});
}

/// @nodoc
class __$$StockDetailImplCopyWithImpl<$Res>
    extends _$StockDetailCopyWithImpl<$Res, _$StockDetailImpl>
    implements _$$StockDetailImplCopyWith<$Res> {
  __$$StockDetailImplCopyWithImpl(
      _$StockDetailImpl _value, $Res Function(_$StockDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? symbol = null,
    Object? summary = null,
  }) {
    return _then(_$StockDetailImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailImpl implements _StockDetail {
  const _$StockDetailImpl(
      {required this.type,
      required this.title,
      required this.symbol,
      required this.summary});

  factory _$StockDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailImplFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final String symbol;
  @override
  final String summary;

  @override
  String toString() {
    return 'StockDetail(type: $type, title: $title, symbol: $symbol, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, symbol, summary);

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailImplCopyWith<_$StockDetailImpl> get copyWith =>
      __$$StockDetailImplCopyWithImpl<_$StockDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailImplToJson(
      this,
    );
  }
}

abstract class _StockDetail implements StockDetail {
  const factory _StockDetail(
      {required final String type,
      required final String title,
      required final String symbol,
      required final String summary}) = _$StockDetailImpl;

  factory _StockDetail.fromJson(Map<String, dynamic> json) =
      _$StockDetailImpl.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  String get symbol;
  @override
  String get summary;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockDetailImplCopyWith<_$StockDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
