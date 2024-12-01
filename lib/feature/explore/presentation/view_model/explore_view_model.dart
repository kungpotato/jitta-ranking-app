import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_country_usecase.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

final fetchCountryListUseCaseProvider = Provider<FetchCountryUseCase>((ref) {
  final repository = ref.watch(exploreRepositoryProvider);
  return FetchCountryUseCase(repository);
});

final exploreProvider =
    StateNotifierProvider<ExploreViewModel, AsyncValue<List<Country>>>(
        (ref) {
  final fetchCountryListUseCase = ref.watch(fetchCountryListUseCaseProvider);
  return ExploreViewModel(fetchCountryListUseCase);
});

class ExploreViewModel extends StateNotifier<AsyncValue<List<Country>>> {
  ExploreViewModel(this.useCase) : super(const AsyncValue.loading()) {
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
