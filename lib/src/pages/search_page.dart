import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar.dart';

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
        ],
      ),
    );
  }
}
