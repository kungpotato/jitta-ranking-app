import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_ranking_usecase.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

final fetchRankingUseCaseProvider = Provider<FetchRankingUseCase>((ref) {
  final repository = ref.watch(exploreRepositoryProvider);
  return FetchRankingUseCase(repository);
});

final rankingProvider =
    StateNotifierProvider<RankingViewModel, AsyncValue<List<StockRanking>>>(
        (ref) {
  final fetchCountryListUseCase = ref.watch(fetchRankingUseCaseProvider);
  return RankingViewModel(fetchCountryListUseCase);
});

class RankingViewModel extends StateNotifier<AsyncValue<List<StockRanking>>> {
  RankingViewModel(this.useCase) : super(const AsyncValue.loading()) {
    fetchRanking(FetchRankingParams(market: 'TH'));
  }

  final FetchRankingUseCase useCase;

  Future<void> fetchRanking(FetchRankingParams params) async {
    try {
      final detail = await useCase(params);
      state = AsyncValue.data(detail);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      debugPrintStack(stackTrace: st);
    }
  }
}
