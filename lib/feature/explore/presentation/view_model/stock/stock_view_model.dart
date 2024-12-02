import 'package:jitta_ranking/core/providers/repository/explore_repository.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/stock/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_stock_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stock_view_model.g.dart';

@riverpod
class StockViewModel extends _$StockViewModel {
  @override
  FutureOr<StockDetail> build(int stockId) async => fetchStockDetail(stockId);

  Future<StockDetail> fetchStockDetail(int stockId) async {
    final repository = ref.watch(exploreRepositoryProvider);
    final fetchCountryListUseCase = FetchStockUseCase(repository);
    final detail =
        await fetchCountryListUseCase(FetchStockParams(stockId: stockId));
    return detail;
  }
}
