import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jitta_ranking/core/theme/theme.dart';
import 'package:jitta_ranking/feature/explore/presentation/pages/explore_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: KpTheme.theme,
        home: const ExplorePage(),
      );
}
