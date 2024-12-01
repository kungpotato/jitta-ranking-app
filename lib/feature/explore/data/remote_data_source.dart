import 'package:graphql_flutter/graphql_flutter.dart';

import 'graphql_queries.dart';

class StockDetailDataSource {
  StockDetailDataSource(this.client);

  final GraphQLClient client;

  Future<Map<String, dynamic>> fetchStockDetail() async {
    final result = await client.query(
      QueryOptions(
        document: gql(fetchPokemonListQuery),
        variables: const {
          'stockId': '1',
          'stockStockId2': 1,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result.data!['stock'] as Map<String, dynamic>;
  }
}
