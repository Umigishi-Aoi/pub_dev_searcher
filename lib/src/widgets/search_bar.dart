import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kSearchBarHeight,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: kTextFieldHorizontalPadding,
          ),
          decoration: BoxDecoration(
            color: kSearchBarBackgroundColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: kSearchBarLeftPadding),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: kSearchBarIconRightPadding),
                  child: Icon(
                    Icons.search,
                    size: kSearchBarIconSize,
                    color: kSearchBarIconColor,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                    style: const TextStyle(
                      color: kSearchBarTextColor,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                      hintText: 'search packages',
                      hintStyle: TextStyle(
                        color: kSearchBarHintTextColor,
                      ),
                    ),
                    cursorColor: kSearchBarTextColor,
                    onEditingComplete: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
