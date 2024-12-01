import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/core/ui/organisms/kp_appbar.dart';
import 'package:jitta_ranking/feature/explore/presentation/view_model/stock_detail_view_model.dart';

class StockDetailPage extends HookConsumerWidget {
  const StockDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stockDetailProvider);

    return Scaffold(
      appBar: KpAppBar(
        text: 'Jitta',
        centerTitle: false,
      ),
      body: state.when(
        data: (data) => KpText.body(text: data.title),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            Center(child: KpText.body(text: 'Error: $error')),
      ),
    );
  }
}
