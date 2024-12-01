// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockRankingImpl _$$StockRankingImplFromJson(Map<String, dynamic> json) =>
    _$StockRankingImpl(
      title: json['title'] as String,
      symbol: json['symbol'] as String,
      stockId: (json['stockId'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      status: json['status'] as String,
      name: json['name'] as String,
      market: json['market'] as String,
      jittaScore: (json['jittaScore'] as num).toDouble(),
      latestLossChance: (json['latestLossChance'] as num).toDouble(),
      latestPrice: (json['latestPrice'] as num).toDouble(),
      latestPriceDiff: LatestPriceDiff.fromJson(
          json['latestPriceDiff'] as Map<String, dynamic>),
      industry: json['industry'] as String,
      jittaRankScore: (json['jittaRankScore'] as num).toDouble(),
      currency: json['currency'] as String,
      exchange: json['exchange'] as String,
      sector: Sector.fromJson(json['sector'] as Map<String, dynamic>),
      nativeName: json['nativeName'] as String?,
    );

Map<String, dynamic> _$$StockRankingImplToJson(_$StockRankingImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'symbol': instance.symbol,
      'stockId': instance.stockId,
      'rank': instance.rank,
      'status': instance.status,
      'name': instance.name,
      'market': instance.market,
      'jittaScore': instance.jittaScore,
      'latestLossChance': instance.latestLossChance,
      'latestPrice': instance.latestPrice,
      'latestPriceDiff': instance.latestPriceDiff,
      'industry': instance.industry,
      'jittaRankScore': instance.jittaRankScore,
      'currency': instance.currency,
      'exchange': instance.exchange,
      'sector': instance.sector,
      'nativeName': instance.nativeName,
    };

_$LatestPriceDiffImpl _$$LatestPriceDiffImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestPriceDiffImpl(
      percent: json['percent'] as String,
      type: json['type'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$LatestPriceDiffImplToJson(
        _$LatestPriceDiffImpl instance) =>
    <String, dynamic>{
      'percent': instance.percent,
      'type': instance.type,
      'value': instance.value,
    };

_$SectorImpl _$$SectorImplFromJson(Map<String, dynamic> json) => _$SectorImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SectorImplToJson(_$SectorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
