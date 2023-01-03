import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Pub Dev Searcher',
      ),
    );
  }

  // Since neither toolbarHeight nor bottom is set,
  //the AppBar default values ​​are fine.
  @override
  Size get preferredSize => AppBar().preferredSize;
}
