import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static final HttpLink _httpLink =
      HttpLink('https://thecollector-staging-l6chkvtlsa-df.a.run.app/');

  static final GraphQLClient client = GraphQLClient(
    link: _httpLink,
    cache: GraphQLCache(),
  );
}
