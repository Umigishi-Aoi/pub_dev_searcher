import 'package:flutter/material.dart';

import 'pages/search_page.dart';

class PubDevSearcher extends StatelessWidget {
  const PubDevSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pub.dev Searcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF1c2834),
      ),
      home: const SearchPage(),
    );
  }
}
