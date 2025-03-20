import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF0064D2);
  static const Color accentColor = Color(0xFFFF5E1F);
  static const Color secondaryColor = Color(0xFF41B6E6);
  static const Color backgroundGray = Color(0xFFF5F5F5);
  static const Color textDark = Color(0xFF333333);
  static const Color textMedium = Color(0xFF666666);
  static const Color textLight = Color(0xFF999999);
  static const Color dividerColor = Color(0xFFEEEEEE);
  static const Color starColor = Color(0xFFFFA41C);
}

class AppAssets {
  static const String logoPath = 'assets/logo.png';

  // Category icons
  static const String flightIcon =
      'https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/5/5e1c8e23e48314a5e49e8a8c07ecb8cb.svg';
  static const String hotelIcon =
      'https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/9/9eef2cca561e0c01defeac6e5da2c8f8.svg';
  static const String villaIcon =
      'https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/b/b5f031e231d9485a0b9519cb5c2b991d.svg';
  static const String todoIcon =
      'https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/c/c80a2b136969e32f4db682a5a088b721.svg';
}

class AppConstants {
  static const String appName = 'Travel App';
  static const double defaultPadding = 16.0;
  static const double cardBorderRadius = 12.0;
  static const Duration transitionDuration = Duration(milliseconds: 300);
}
