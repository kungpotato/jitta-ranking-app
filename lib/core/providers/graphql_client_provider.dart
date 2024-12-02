import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking/core/network/graphql_client.dart';

final graphQLClientProvider =
    Provider<GraphQLClient>((ref) => GraphQLConfig.initClient());
