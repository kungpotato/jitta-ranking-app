import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/core/ui/organisms/kp_appbar.dart';
import 'package:jitta_ranking/feature/explore/presentation/pages/ranking_page.dart';
import 'package:jitta_ranking/feature/explore/presentation/view_model/explore/explore_view_model.dart';

class ExplorePage extends HookConsumerWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(exploreViewModelProvider);

    return Scaffold(
      appBar: KpAppBar(
        text: 'Wimangsa',
        centerTitle: false,
      ),
      body: state.when(
        data: (data) => CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: KpDesign.spacingMedium,
                  top: KpDesign.spacingMedium,
                ),
                child: KpText.headline2(text: 'Explore'),
              ),
            ),
            if (data.isNotEmpty)
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: KpDesign.spacingMedium,
                  vertical: KpDesign.spacingMedium,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => GridItem(
                      imageUrl:
                          'https://www.jitta.com/assets/img/discover/country/${data[index].code.toLowerCase()}.jpg',
                      label: data[index].name,
                      market: data[index].code,
                    ),
                    childCount: data.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                ),
              ),
            if (data.isEmpty) Center(child: KpText.body(text: 'Data is empty')),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            Center(child: KpText.body(text: 'Error: $error')),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    required this.imageUrl,
    required this.label,
    required this.market,
    super.key,
  });

  final String imageUrl;
  final String label;
  final String market;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RankingPage(
              name: label,
              market: market,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: KpDesign.cardBorderRadius,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              errorBuilder: (context, error, stackTrace) => const Placeholder(),
            ),
          ),
          ClipRRect(
            borderRadius: KpDesign.cardBorderRadius,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Center(
            child: KpText.headline2(
              text: label,
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
