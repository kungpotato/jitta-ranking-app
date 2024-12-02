import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking/feature/explore/data/remote_data_source.dart';

final exploreSourceProvider = Provider.family<ExploreDataSource, GraphQLClient>(
  (ref, client) => ExploreDataSource(client),
);
