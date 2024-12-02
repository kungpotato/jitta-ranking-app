import 'package:jitta_ranking/core/providers/repository/explore_repository.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/domain/usecases/fetch_country_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'explore_view_model.g.dart';

@riverpod
class ExploreViewModel extends _$ExploreViewModel {
  @override
  FutureOr<List<Country>> build() async => fetchExplore();

  Future<List<Country>> fetchExplore() async {
    final repository = ref.watch(exploreRepositoryProvider);
    final fetchCountryListUseCase = FetchCountryUseCase(repository);
    final detail = await fetchCountryListUseCase();
    return detail;
  }
}
