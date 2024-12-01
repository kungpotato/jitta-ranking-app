import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_detail.freezed.dart';
part 'stock_detail.g.dart';

@freezed
class StockDetail with _$StockDetail {
  const factory StockDetail({
    required String type,
    required String title,
    required String symbol,
    required String summary,
  }) = _StockDetail;

  factory StockDetail.fromJson(Map<String, dynamic> json) =>
      _$StockDetailFromJson(json);
}
