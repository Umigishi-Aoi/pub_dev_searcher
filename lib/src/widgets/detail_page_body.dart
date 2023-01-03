import 'package:flutter/material.dart';
import 'package:pub_dev_searcher/src/constants.dart';

class DetailPageBody extends StatelessWidget {
  const DetailPageBody({
    super.key,
    this.packageDescription,
    required this.packageName,
    required this.packageVersion,
    required this.likeCount,
    required this.grantedPoints,
    required this.maxPoints,
    required this.popularityScore,
  });

  final String packageName;
  final String packageVersion;
  final String? packageDescription;
  final int likeCount;
  final int grantedPoints;
  final int maxPoints;
  final double popularityScore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: ListView(
        children: [
          Text(
            '$packageName $packageVersion',
            style: kPackageDetailTitleTextStyle,
          ),
          const SizedBox(
            height: kVerticalPadding,
          ),
          Text(packageDescription ?? ''),
          const SizedBox(
            height: kVerticalPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '$likeCount',
                    style: kPackageDetailNumberTextStyle,
                  ),
                  const Text('Likes'),
                ],
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$grantedPoints',
                        style: kPackageDetailNumberTextStyle,
                      ),
                      Text(
                        '/$maxPoints',
                        style: kPackageDetailSubNumberTextStyle,
                      ),
                    ],
                  ),
                  const Text(
                    'PUB POINTS',
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${popularityScore.round()}',
                        style: kPackageDetailNumberTextStyle,
                      ),
                      const Text(
                        '%',
                        style: kPackageDetailSubNumberTextStyle,
                      ),
                    ],
                  ),
                  const Text(
                    'POPULARITY',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
