import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_themes/app_sizes.dart';
import 'app_themes/app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    // ================= COLOR SCHEME =================
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.secondary,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.darkBlue,
    ),

    scaffoldBackgroundColor: Colors.white,

    // ================= APP BAR =================
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: AppTextStyles.heading3,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // ================= TEXT =================
    textTheme: const TextTheme(
      headlineLarge: AppTextStyles.heading1,
      headlineMedium: AppTextStyles.heading2,
      headlineSmall: AppTextStyles.heading3,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      labelLarge: AppTextStyles.button,
    ),

    // ================= BUTTON =================
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, AppSizes.buttonHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
        ),
        textStyle: AppTextStyles.button,
        elevation: 0,
      ),
    ),

    // ================= INPUT FIELD =================
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textFieldFill,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.lg,
        vertical: AppSizes.md,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputRadius),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputRadius),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputRadius),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      hintStyle: AppTextStyles.bodySmall,
    ),

    // ================= CARD =================
    cardTheme: CardThemeData(
      elevation: AppSizes.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.cardRadius),
      ),
      margin: EdgeInsets.zero,
    ),

    // ================= ICON =================
    iconTheme: const IconThemeData(
      color: AppColors.darkBlue,
      size: AppSizes.iconMd,
    ),

    // ================= DIVIDER =================
    dividerTheme: const DividerThemeData(
      thickness: AppSizes.dividerThickness,
      color: AppColors.lightGrey,
    ),
  );
}
