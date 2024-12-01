import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/stock/stock_detail.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_ranking_usecase.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_stock_usecase.dart';

import 'graphql_queries.dart';

class ExploreDataSource {
  ExploreDataSource(this.client);

  final GraphQLClient client;

  Future<List<Country>> fetchCountry() async {
    final result = await client.query(
      QueryOptions(
        document: gql(fetchCountryQuery),
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return (result.data!['availableCountry'] as List<dynamic>)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<StockRanking>> fetchStockRacking(
    FetchRankingParams params,
  ) async {
    final result = await client.query(
      QueryOptions(
        document: gql(fetchRankingQuery),
        variables: {
          'filter': {
            'limit': params.limit,
            'market': params.market,
            'page': params.page,
            'sectors': params.sectors,
          },
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return (result.data!['jittaRanking']['data'] as List<dynamic>)
        .map((e) => StockRanking.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StockDetail> fetchStockDetail(FetchStockParams params) async {
    final result = await client.query(
      QueryOptions(
        document: gql(fetchStockDetailQuery),
        variables: {'stockId': params.stockId, 'stockId2': params.stockId2},
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return StockDetail.fromJson(result.data!['stock'] as Map<String, dynamic>);
  }
}
