import 'package:flutter/material.dart';

import 'pages/search_page.dart';

class PubDevSearcher extends StatelessWidget {
  const PubDevSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pub.dev Searcher',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.grey,
      ),
      home: const SearchPage(),
    );
  }
}
