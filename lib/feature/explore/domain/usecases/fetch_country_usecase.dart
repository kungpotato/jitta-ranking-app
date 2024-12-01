import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/repository/explore_repository.dart';

class FetchCountryUseCase {
  FetchCountryUseCase(this.repository);

  final ExploreRepository repository;

  Future<List<Country>> call() async => repository.fetchCountry();
}
