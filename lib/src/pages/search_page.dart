import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/package_item.dart';
import '../widgets/search_bar.dart';
import 'detail_page.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          SearchBar(
            controller: controller,
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                return Future<void>.delayed(const Duration(seconds: 1));
              },
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return PackageItem(
                    name: 'package_name',
                    description: 'package_description',
                    version: 'package_version',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const DetailPage(
                          packageName: 'packageName',
                        ),
                      ),
                    ),
                  );
                  // return const PackageItemShimmer();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
