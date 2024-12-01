import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_stock_detail_usecase.dart';
import 'package:jitta_ranking/feature/explore/repository/stock_detail_repository.dart';

final fetchPokemonListUseCaseProvider =
    Provider<FetchStockDetailUseCase>((ref) {
  final repository = ref.watch(stockDetailRepositoryProvider);
  return FetchStockDetailUseCase(repository);
});

final stockDetailProvider =
    StateNotifierProvider<StockDetailViewModel, AsyncValue<StockDetail>>((ref) {
  final fetchPokemonListUseCase = ref.watch(fetchPokemonListUseCaseProvider);
  return StockDetailViewModel(fetchPokemonListUseCase);
});

class StockDetailViewModel extends StateNotifier<AsyncValue<StockDetail>> {
  StockDetailViewModel(this.useCase) : super(const AsyncValue.loading()) {
    fetchStockDetail();
  }

  final FetchStockDetailUseCase useCase;

  Future<void> fetchStockDetail() async {
    try {
      final detail = await useCase();
      state = AsyncValue.data(detail);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
