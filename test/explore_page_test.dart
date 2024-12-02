import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/providers/data_source/explore_data_source.dart';
import 'package:jitta_ranking/feature/explore/data/remote_data_source.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/country/country.dart';
import 'package:jitta_ranking/feature/explore/presentation/pages/explore_page.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'explore_page_test.mocks.dart';

@GenerateMocks([ExploreDataSource])
void main() {
  late ExploreDataSource exploreDataSource;

  setUp(() {
    exploreDataSource = MockExploreDataSource();
  });

  Widget createTestWidget() => ProviderScope(
        overrides: [
          exploreSourceProvider
              .overrideWith((ref, client) => exploreDataSource),
        ],
        child: const MaterialApp(
          home: ExplorePage(),
        ),
      );

  final mockData = [
    Country.fromJson(const {
      'name': 'Thailand',
      'flag': '🇹🇭',
      'displayExchange': ['SET', 'MAI'],
      'code': 'TH',
    }),
  ];

  testWidgets(
      'Given user on the Explore page, when waiting for the api response, then shows loading state',
      (WidgetTester tester) async {
    when(exploreDataSource.fetchCountry()).thenAnswer((_) async => mockData);

    await tester.pumpWidget(createTestWidget());

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets(
      'Given user on the Explore page, when api error, then shows error state',
      (WidgetTester tester) async {
    when(exploreDataSource.fetchCountry())
        .thenAnswer((_) async => throw Exception('something happened'));

    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.textContaining('Error'), findsOneWidget);
  });

  testWidgets(
      'Given user on the Explore page, when the api response success, then shows data with grid items',
      (WidgetTester tester) async {
    when(exploreDataSource.fetchCountry()).thenAnswer((_) async => mockData);

    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.textContaining('Thailand'), findsOneWidget);
  });
}
