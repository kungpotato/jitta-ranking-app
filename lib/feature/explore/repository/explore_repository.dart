import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/core/network/graphql_client.dart';
import 'package:jitta_ranking/feature/explore/data/remote_data_source.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';

final exploreSourceProvider = Provider<ExploreDataSource>(
  (ref) => ExploreDataSource(GraphQLConfig.client),
);

final exploreRepositoryProvider = Provider<ExploreRepository>((ref) {
  final remoteDataSource = ref.watch(exploreSourceProvider);
  return ExploreRepositoryImpl(remoteDataSource);
});

abstract class ExploreRepository {
  Future<List<Country>> fetchCountry();
}

class ExploreRepositoryImpl implements ExploreRepository {
  ExploreRepositoryImpl(this.remoteDataSource);

  final ExploreDataSource remoteDataSource;

  @override
  Future<List<Country>> fetchCountry() async => remoteDataSource.fetchCountry();
}
