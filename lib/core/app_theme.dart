import 'package:flutter/material.dart';

/// Palette de couleurs de l'application.
///
/// Les couleurs de référence sont [AppColors.white], [AppColors.orange] et
/// [AppColors.deepPurple]. Les autres teintes en sont des dérivées.
abstract final class AppColors {
  /// Blanc principal : fond des écrans.
  static const Color white = Color(0xFFFFFFFF);

  /// Orange accent : icône et éléments mis en avant.
  static const Color orange = Color(0xFFEF5F18);

  /// Violet foncé professionnel : titres et éléments principaux.
  static const Color deepPurple = Color(0xFF261A66);

  /// Texte secondaire : descriptions et légendes.
  static const Color mutedText = Color(0xFF6E6A87);
}

/// Thème Material 3 de l'application.
abstract final class AppTheme {
  /// Thème clair de l'application.
  static ThemeData get light {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.deepPurple,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.deepPurple,
      onPrimary: AppColors.white,
      secondary: AppColors.orange,
      onSecondary: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.deepPurple,
      surfaceTint: Colors.transparent,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.white,
      splashFactory: InkSparkle.splashFactory,
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.3,
          color: AppColors.deepPurple,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.55,
          color: AppColors.mutedText,
        ),
      ),
    );
  }
}
