import 'package:jitta_ranking/core/providers/repository/explore_repository.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_ranking_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ranking_view_model.g.dart';

@riverpod
class RankingViewModel extends _$RankingViewModel {
  @override
  FutureOr<List<StockRanking>> build(String market) async =>
      fetchRanking(market);

  Future<List<StockRanking>> fetchRanking(String market) async {
    final repository = ref.watch(exploreRepositoryProvider);
    final fetchCountryListUseCase = FetchRankingUseCase(repository);
    final detail =
        await fetchCountryListUseCase(FetchRankingParams(market: market));
    return detail;
  }
}
