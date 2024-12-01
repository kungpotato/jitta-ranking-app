import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/core/network/graphql_client.dart';
import 'package:jitta_ranking/feature/explore/data/remote_data_source.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/stock_detail.dart';

final stockDetailDataSourceProvider = Provider<StockDetailDataSource>(
  (ref) => StockDetailDataSource(GraphQLConfig.client),
);

final stockDetailRepositoryProvider = Provider<StockDetailRepository>((ref) {
  final remoteDataSource = ref.watch(stockDetailDataSourceProvider);
  return StockDetailRepositoryImpl(remoteDataSource);
});

abstract class StockDetailRepository {
  Future<StockDetail> fetchStockDetail();
}

class StockDetailRepositoryImpl implements StockDetailRepository {
  StockDetailRepositoryImpl(this.remoteDataSource);

  final StockDetailDataSource remoteDataSource;

  @override
  Future<StockDetail> fetchStockDetail() async {
    final data = await remoteDataSource.fetchStockDetail();
    return StockDetail(
      title: data['title'] as String,
      symbol: data['symbol'] as String,
    );
  }
}
