import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_country_usecase.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

final fetchPokemonListUseCaseProvider = Provider<FetchCountryUseCase>((ref) {
  final repository = ref.watch(exploreRepositoryProvider);
  return FetchCountryUseCase(repository);
});

final stockDetailProvider =
    StateNotifierProvider<StockDetailViewModel, AsyncValue<List<Country>>>(
        (ref) {
  final fetchPokemonListUseCase = ref.watch(fetchPokemonListUseCaseProvider);
  return StockDetailViewModel(fetchPokemonListUseCase);
});

class StockDetailViewModel extends StateNotifier<AsyncValue<List<Country>>> {
  StockDetailViewModel(this.useCase) : super(const AsyncValue.loading()) {
    fetchStockDetail();
  }

  final FetchCountryUseCase useCase;

  Future<void> fetchStockDetail() async {
    try {
      final detail = await useCase();
      state = AsyncValue.data(detail);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
