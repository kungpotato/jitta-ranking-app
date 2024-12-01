import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_ranking.freezed.dart';
part 'stock_ranking.g.dart';

@freezed
class StockRanking with _$StockRanking {
  const factory StockRanking({
    required String title,
    required String symbol,
    required int stockId,
    required int rank,
    required String status,
    required String name,
    required String market,
    required double jittaScore,
    required double latestLossChance,
    required double latestPrice,
    required LatestPriceDiff latestPriceDiff,
    required String industry,
    required double jittaRankScore,
    required String currency,
    required String exchange,
    required Sector sector,
    String? id,
    String? nativeName,
  }) = _StockRanking;

  factory StockRanking.fromJson(Map<String, dynamic> json) =>
      _$StockRankingFromJson(json);
}

@freezed
class LatestPriceDiff with _$LatestPriceDiff {
  const factory LatestPriceDiff({
    required String percent,
    required String type,
    required double value,
  }) = _LatestPriceDiff;

  factory LatestPriceDiff.fromJson(Map<String, dynamic> json) =>
      _$LatestPriceDiffFromJson(json);
}

@freezed
class Sector with _$Sector {
  const factory Sector({
    required String name,
    required String id,
  }) = _Sector;

  factory Sector.fromJson(Map<String, dynamic> json) => _$SectorFromJson(json);
}
