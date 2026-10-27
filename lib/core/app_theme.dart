import 'package:flutter/material.dart';

/// Palette de couleurs de l'application.
///
/// Les couleurs de référence proviennent du thème Hermes CLI :
/// fond nocturne `#1E1E2E`, or `#FFD700`, ambre `#FFBF00`,
/// bronze `#CD7F32` et texte crème `#FFF8DC`.
abstract final class AppColors {
  /// Fond principal de l'application (identique au fond du CLI).
  static const Color background = Color(0xFF1E1E2E);

  /// Fond des surfaces secondaires (barres, champs, cartes).
  static const Color surface = Color(0xFF1A1A2E);

  /// Surface légèrement surélevée (app bars, chips).
  static const Color surfaceElevated = Color(0xFF333355);

  /// Or : couleur primaire, titres et éléments mis en avant.
  static const Color gold = Color(0xFFFFD700);

  /// Ambre : couleur secondaire, icônes et accents.
  static const Color amber = Color(0xFFFFBF00);

  /// Bronze : bordures, séparateurs et contours de champs.
  static const Color bronze = Color(0xFFCD7F32);

  /// Texte principal : crème chaud.
  static const Color text = Color(0xFFFFF8DC);

  /// Texte secondaire : descriptions et légendes.
  static const Color mutedText = Color(0xFFC9A227);

  /// Texte tertiaire : labels discrets.
  static const Color faintText = Color(0xFF8F8680);
}

/// Thème Material 3 de l'application.
abstract final class AppTheme {
  /// Thème sombre de l'application, aligné sur la palette du CLI Hermes.
  static ThemeData get dark {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.gold,
      brightness: Brightness.dark,
    ).copyWith(
      primary: AppColors.gold,
      onPrimary: AppColors.background,
      secondary: AppColors.amber,
      onSecondary: AppColors.background,
      tertiary: AppColors.bronze,
      onTertiary: AppColors.text,
      surface: AppColors.background,
      onSurface: AppColors.text,
      surfaceContainerHighest: AppColors.surfaceElevated,
      onSurfaceVariant: AppColors.mutedText,
      outline: AppColors.bronze,
      outlineVariant: AppColors.surfaceElevated,
      surfaceTint: Colors.transparent,
      error: const Color(0xFFFF6B6B),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      canvasColor: AppColors.background,
      dividerColor: AppColors.bronze,
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: const AppBarThemeData(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.gold,
        elevation: 0,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.bronze),
        ),
      ),
      inputDecorationTheme: const InputDecorationThemeData(
        filled: true,
        fillColor: AppColors.surface,
        hintStyle: const TextStyle(color: AppColors.faintText),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.bronze),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.gold, width: 2),
        ),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.3,
          color: AppColors.gold,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.55,
          color: AppColors.mutedText,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.4,
          color: AppColors.faintText,
        ),
      ),
    );
  }
}
