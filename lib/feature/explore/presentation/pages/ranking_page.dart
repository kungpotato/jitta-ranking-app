import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/core/ui/organisms/kp_appbar.dart';
import 'package:jitta_ranking/feature/explore/presentation/view_model/ranking/ranking_view_model.dart';
import 'package:jitta_ranking/feature/explore/presentation/widgets/rank_item.dart';

class RankingPage extends HookConsumerWidget {
  const RankingPage({required this.name, required this.market, super.key});

  final String name;
  final String market;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankingViewModelProvider(market));

    return Scaffold(
      appBar: KpAppBar(
        text: name,
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
                child: KpText.headline2(text: 'Stock Ranking'),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: KpDesign.spacingMedium,
                vertical: KpDesign.spacingSmall,
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => RankItem(
                    data: data[index],
                  ),
                  childCount: data.length,
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
