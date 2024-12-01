import 'package:flutter/material.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';
import 'package:jitta_ranking/feature/explore/domain/entities/ranking/stock_ranking.dart';

class RankItem extends StatelessWidget {
  const RankItem({required this.data, super.key});

  final StockRanking data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: KpDesign.buttonBorderRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.all(KpDesign.spacingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: KpText.custom(
                    text: data.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                KpText.custom(
                  text: '${data.exchange}: ${data.symbol}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: theme.colorScheme.scrim),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: KpText.custom(
                        text: 'Price: ${data.currency}${data.latestPrice}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.scrim,
                        ),
                      ),
                    ),
                    Expanded(
                      child: KpText.custom(
                        text: 'Loss Chance: ${data.latestLossChance}%',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.scrim,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Container(
              color: KpDesign.highlightColor,
              width: 60,
              height: 40,
              child: Column(
                children: [
                  Flexible(
                    child: KpText.custom(
                      text: data.jittaScore.toString(),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.primaryColor),
                    ),
                  ),
                  Flexible(
                    child: KpText.custom(
                      text: 'WM Score',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelSmall!.copyWith(
                        color: theme.primaryColor,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
