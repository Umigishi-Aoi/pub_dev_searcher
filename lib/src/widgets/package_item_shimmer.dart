import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants.dart';

class PackageItemShimmer extends StatelessWidget {
  const PackageItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kShimmerBaseColor,
      highlightColor: kShimmerHighlightColor,
      child: const ListTile(),
    );
  }
}
