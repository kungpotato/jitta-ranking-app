import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static final HttpLink httpLink =
      HttpLink('https://thecollector-staging-l6chkvtlsa-df.a.run.app/');

  static final WebSocketLink subscriptionUri = WebSocketLink('');

  static GraphQLClient initClient() => GraphQLClient(
        // cache: GraphQLCache(),
        cache: GraphQLCache(store: InMemoryStore()),
        // link:  Link.from([httpLink, subscriptionUri]),
        link: httpLink,
      );
}
