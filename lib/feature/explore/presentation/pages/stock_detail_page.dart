import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/core/ui/organisms/kp_appbar.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';
import 'package:jitta_ranking/feature/explore/presentation/view_model/stock/stock_view_model.dart';

class StockDetailPage extends HookConsumerWidget {
  const StockDetailPage({required this.data, super.key});

  final StockRanking data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stockViewModelProvider(data.stockId));

    return Scaffold(
      appBar: KpAppBar(
        text: data.symbol,
      ),
      body: state.when(
        data: (item) => CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: KpDesign.spacingMedium,
                  top: KpDesign.spacingMedium,
                ),
                child: KpText.headline2(text: data.name),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: KpDesign.spacingMedium,
                  top: KpDesign.spacingMedium,
                ),
                child: KpText.headline2(text: data.symbol),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: KpDesign.spacingMedium,
                  top: KpDesign.spacingMedium,
                ),
                child: KpText.headline2(text: data.industry),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: KpDesign.spacingMedium,
                  top: KpDesign.spacingMedium,
                ),
                child: KpText.headline2(text: data.latestPrice.toString()),
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
