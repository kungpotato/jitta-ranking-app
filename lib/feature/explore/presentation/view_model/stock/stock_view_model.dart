import 'package:jitta_ranking/feature/explore/domain/entities/stock/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_stock_usecase.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stock_view_model.g.dart';

final fetchStockUseCaseProvider = Provider<FetchStockUseCase>((ref) {
  final repository = ref.watch(exploreRepositoryProvider);
  return FetchStockUseCase(repository);
});

@riverpod
class StockViewModel extends _$StockViewModel {
  @override
  FutureOr<StockDetail> build(int stockId) async => fetchStockDetail(stockId);

  Future<StockDetail> fetchStockDetail(int stockId) async {
    final fetchCountryListUseCase = ref.watch(fetchStockUseCaseProvider);
    final detail =
        await fetchCountryListUseCase(FetchStockParams(stockId: stockId));
    return detail;
  }
}
