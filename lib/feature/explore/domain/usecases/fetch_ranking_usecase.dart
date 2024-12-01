import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

class FetchRankingParams {
  FetchRankingParams({
    required this.market,
    this.limit = 10,
    this.page = 0,
    this.sectors,
  });

  final String market;
  final int limit;
  final int page;
  final String? sectors;
}

class FetchRankingUseCase {
  FetchRankingUseCase(this.repository);

  final ExploreRepository repository;

  Future<List<StockRanking>> call(FetchRankingParams params) async =>
      repository.fetchStockRacking(params);
}
