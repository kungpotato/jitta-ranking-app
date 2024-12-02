import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/core/providers/data_source/explore_data_source.dart';
import 'package:jitta_ranking/core/providers/graphql_client_provider.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

final exploreRepositoryProvider = Provider<ExploreRepository>((ref) {
  final graphQlClient = ref.read(graphQLClientProvider);
  final remoteDataSource = ref.watch(exploreSourceProvider(graphQlClient));
  return ExploreRepositoryImpl(remoteDataSource);
});
