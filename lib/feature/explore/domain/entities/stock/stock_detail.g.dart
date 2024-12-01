// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockDetailImpl _$$StockDetailImplFromJson(Map<String, dynamic> json) =>
    _$StockDetailImpl(
      type: json['type'] as String,
      title: json['title'] as String,
      symbol: json['symbol'] as String,
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$StockDetailImplToJson(_$StockDetailImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'symbol': instance.symbol,
      'summary': instance.summary,
    };
