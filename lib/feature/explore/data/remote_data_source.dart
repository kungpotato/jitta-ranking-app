import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';

import 'graphql_queries.dart';

class ExploreDataSource {
  ExploreDataSource(this.client);

  final GraphQLClient client;

  Future<List<Country>> fetchCountry() async {
    final result = await client.query(
      QueryOptions(
        document: gql(fetchCountryQuery),
        variables: const {
          'stockId': '1',
          'stockStockId2': 1,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return (result.data!['availableCountry'] as List<dynamic>)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
