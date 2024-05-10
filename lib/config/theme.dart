import 'package:flutter/material.dart';
import 'package:news_classification_app/config/colors.dart';
import 'package:news_classification_app/config/text_style.dart';

class ATheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        primaryColor: BColors.primaryColor,
        scaffoldBackgroundColor: BColors.containerColor,
        textTheme: const TextTheme(
          titleMedium: BTextStyle.titleText,
          titleSmall: BTextStyle.titleWhiteSemiBold,
          bodyMedium: BTextStyle.regularBlack,
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: BColors.primaryColor,
          onPrimary: Colors.white,
          secondary: BColors.secondaryColor,
          onSecondary: BColors.lightTextColor,
          surfaceVariant: Colors.transparent,
          error: Colors.red,
          onError: Colors.white,
          background: BColors.lightScaffold,
          onBackground: Colors.black,
          surface: BColors.backgroundColor,
          onSurface: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: BColors.containerColor,
          elevation: 0,
          scrolledUnderElevation: 0,
          titleTextStyle: BTextStyle.titleWhiteSemiBold,
          surfaceTintColor: Colors.transparent,
        ),
      );

  // static ThemeData get darkTheme => ThemeData(
  //       useMaterial3: true,
  //       primaryColor: BColors.darkPrimaryColor,
  //       scaffoldBackgroundColor: BColors.darkScaffold,
  //       textTheme: const TextTheme(
  //         titleMedium: BTextStyle.titleWhiteSemiBold,
  //         bodyMedium: BTextStyle.regularWhite,
  //         bodySmall: BTextStyle.descriptionWhite,
  //         displayLarge: BTextStyle.welcomeUsernameWhite,
  //         displayMedium: BTextStyle.heyWhite,
  //         labelMedium: BTextStyle.lableTextWhite,
  //         labelSmall: BTextStyle.lableSmallTextWhite,
  //       ),
  //       colorScheme: const ColorScheme(
  //         brightness: Brightness.dark,
  //         surfaceVariant: Colors.transparent,
  //         primary: BColors.darkPrimaryColor,
  //         onPrimary: BColors.blackTextColor,
  //         secondary: BColors.darkSecondaryColor,
  //         onSecondary: BColors.whiteTextColors,
  //         error: Colors.red,
  //         onError: Colors.white,
  //         background: BColors.darkScaffold,
  //         onBackground: BColors.darkPrimaryColor,
  //         surface: BColors.darkSurface,
  //         onSurface: BColors.onDarkSurface,
  //       ),
  //       iconTheme: const IconThemeData(
  //         size: 24,
  //         color: BColors.onDarkSurface,
  //         fill: .5,
  //       ),
  //       actionIconTheme: ActionIconThemeData(
  //         backButtonIconBuilder: (context) => const Icon(
  //           size: 24,
  //           Icons.arrow_back_ios,
  //           color: BColors.whiteTextColors,
  //           fill: .5,
  //         ),
  //       ),
  //       appBarTheme: const AppBarTheme(
  //         backgroundColor: BColors.darkScaffold,
  //         elevation: 0,
  //         scrolledUnderElevation: 0,
  //         surfaceTintColor: Colors.transparent,
  //       ),
  //     );
}