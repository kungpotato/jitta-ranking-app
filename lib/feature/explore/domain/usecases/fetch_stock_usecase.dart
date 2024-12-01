import 'package:jitta_ranking/feature/explore/domain/entities/stock/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

class FetchStockParams {
  FetchStockParams({required this.stockId, this.stockId2});

  final int stockId;
  final String? stockId2;
}

class FetchStockUseCase {
  FetchStockUseCase(this.repository);

  final ExploreRepository repository;

  Future<StockDetail> call(FetchStockParams params) async =>
      repository.fetchStockDetail(params);
}
