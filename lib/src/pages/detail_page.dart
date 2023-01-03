import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/detail_page_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.packageName,
  });

  final String packageName;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: DetailPageBody(
        packageName: 'package_name',
        packageVersion: '1.0.0+1',
        packageDescription: 'package_description',
        likeCount: 100,
        grantedPoints: 100,
        maxPoints: 100,
        popularityScore: 100,
      ),
    );
  }
}
