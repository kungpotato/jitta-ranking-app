import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/core/ui/organisms/kp_appbar.dart';
import 'package:jitta_ranking/feature/explore/presentation/view_model/explore_view_model.dart';

class ExplorePage extends HookConsumerWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stockDetailProvider);

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
                  ),
                  childCount: 20,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
              ),
            ),
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
    super.key,
  });

  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {},
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
