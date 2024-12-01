import 'package:jitta_ranking/feature/explore/domain/entities/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/repository/stock_detail_repository.dart';

class FetchStockDetailUseCase {
  FetchStockDetailUseCase(this.repository);

  final StockDetailRepository repository;

  Future<StockDetail> call() async => repository.fetchStockDetail();
}
