import 'package:flutter/material.dart';

//Settings
const int kDisplayPackagesNumber = 100;
const int kSearchedPackageNumber = 10;

//Layout related
const double kSearchBarHeight = 70;
const double kSearchBarLeftPadding = 10;
const double kTextFieldHorizontalPadding = 40;
const double kBorderRadius = 50;
const double kSearchBarIconSize = 40;
const double kSearchBarIconRightPadding = 16;
const double kPackageNameRightMargin = 8;
const double kTitleShimmerHeight = 24;
const double kTitleShimmerWidth = 100;
const double kVersionShimmerWidth = 40;
const double kSubTitleShimmerHeight = 16;
const double kShimmerVerticalPadding = 8;

//Colors
const Color kSeedColor = Color(0xFF1c2834);
const Color kSearchBarBackgroundColor = Color(0xff35404d);
const Color kSearchBarIconColor = Color(0xFF9E9E9E);
const Color kSearchBarTextColor = Color(0xFFFFFFFF);
const Color kSearchBarHintTextColor = Color(0xFFBDBDBD);
const Color kShimmerBaseColor = Color(0xFFE0E0E0);
const Color kShimmerHighlightColor = Color(0xFFFFFFFF);

//TextStyles
const TextStyle kPackageNameTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xff0175c2),
  overflow: TextOverflow.ellipsis,
);
