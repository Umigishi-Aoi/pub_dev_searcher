import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants.dart';

class PackageItemShimmer extends StatelessWidget {
  const PackageItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: kShimmerBaseColor,
      borderRadius: BorderRadius.circular(kBorderRadius),
    );

    final description = Container(
      height: kSubTitleShimmerHeight,
      width: double.infinity,
      decoration: decoration,
    );

    return Shimmer.fromColors(
      baseColor: kShimmerBaseColor,
      highlightColor: kShimmerHighlightColor,
      child: ListTile(
        title: Row(
          children: [
            Container(
              height: kTitleShimmerHeight,
              width: kTitleShimmerWidth,
              decoration: decoration,
            ),
            const SizedBox(width: kPackageNameRightMargin),
            Container(
              height: kTitleShimmerHeight,
              width: kVersionShimmerWidth,
              decoration: decoration,
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: kVerticalPadding),
          child: Column(
            children: [
              description,
              const SizedBox(height: kVerticalPadding),
              description,
            ],
          ),
        ),
      ),
    );
  }
}
