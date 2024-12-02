import 'package:jitta_ranking/feature/explore/data/remote_data_source.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/stock/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_ranking_usecase.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_stock_usecase.dart';

abstract class ExploreRepository {
  Future<List<Country>> fetchCountry();

  Future<List<StockRanking>> fetchStockRacking(FetchRankingParams params);

  Future<StockDetail> fetchStockDetail(FetchStockParams params);
}

class ExploreRepositoryImpl implements ExploreRepository {
  ExploreRepositoryImpl(this.remoteDataSource);

  final ExploreDataSource remoteDataSource;

  @override
  Future<List<Country>> fetchCountry() => remoteDataSource.fetchCountry();

  @override
  Future<List<StockRanking>> fetchStockRacking(FetchRankingParams params) =>
      remoteDataSource.fetchStockRacking(params);

  @override
  Future<StockDetail> fetchStockDetail(FetchStockParams params) =>
      remoteDataSource.fetchStockDetail(params);
}
