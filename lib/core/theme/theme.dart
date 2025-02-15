import 'package:flagify/core/colors/colors.dart';
import 'package:flagify/core/textstyle/textstyle.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: kLightThemePrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: kLightThemePrimaryColor,
      foregroundColor: Colors.white,
      elevation: 2,
      titleTextStyle: kTextStyleBold16),
  textTheme: textTheme,
  cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4,
      shadowColor: Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(kLightThemePrimaryColor),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      hintStyle: kTextStyleRegular12.copyWith(color: kGreyColor),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kLightThemePrimaryColor, width: 1.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kLightThemePrimaryColor, width: 1.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kLightThemePrimaryColor, width: 2)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
);

ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kDarkThemePrimaryColor,
  scaffoldBackgroundColor: kBlackColor,
  appBarTheme: AppBarTheme(
      backgroundColor: kBlackColor,
      foregroundColor: Colors.white,
      elevation: 2,
      titleTextStyle: kTextStyleBold16),
  inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      hintStyle: kTextStyleRegular12.copyWith(color: Colors.white70),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kDarkThemePrimaryColor, width: 1.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kDarkThemePrimaryColor, width: 1.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kDarkThemePrimaryColor, width: 2)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kWhiteColor),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))))),
  textTheme: textTheme,
  cardTheme: CardTheme(
      color: kDarkThemePrimaryColor,
      elevation: 0,
      shadowColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
);

TextTheme textTheme =
    TextTheme(bodyLarge: kTextStyleSemiBold14, bodyMedium: kTextStyleRegular12);
