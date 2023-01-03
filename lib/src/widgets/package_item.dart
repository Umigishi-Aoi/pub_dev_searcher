// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({
    super.key,
    required this.name,
    required this.version,
    required this.description,
    required this.onTap,
  });

  final String name;
  final String version;
  final String? description;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: kPackageNameRightMargin),
            child: Text(
              name,
              style: kPackageNameTextStyle,
            ),
          ),
          Text(version)
        ],
      ),
      subtitle: description != null
          ? Text(
              description!,
            )
          : null,
    );
  }
}
