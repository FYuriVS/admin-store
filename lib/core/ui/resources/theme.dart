import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0F172A),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFBEC6E0),
      onPrimaryContainer: Color(0xFF060E20),
      primaryFixed: Color(0xFFE2E7FF),
      primaryFixedDim: Color(0xFFCAD1EB),
      onPrimaryFixed: Color(0xFF0B1326),
      onPrimaryFixedVariant: Color(0xFF171F33),
      secondary: Color(0xFFF1F5F9),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFFE4E9ED),
      onSecondaryContainer: Color(0xFF171C1F),
      secondaryFixed: Color(0xFFE4E9ED),
      secondaryFixedDim: Color(0xFFCED2D6),
      onSecondaryFixed: Color(0xFF0F1417),
      onSecondaryFixedVariant: Color(0xFF1B2023),
      tertiary: Color(0xFF73787B),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF1F5F9),
      onTertiaryContainer: Color(0xFF141414),
      tertiaryFixed: Color(0xFFE4E9ED),
      tertiaryFixedDim: Color(0xFFCED2D6),
      onTertiaryFixed: Color(0xFF0F1417),
      onTertiaryFixedVariant: Color(0xFF1B2023),
      error: Color(0xFFEF4444),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD7),
      onErrorContainer: Color(0xFF410004),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF0E0E0E),
      surfaceDim: Color(0xFFE7E7E7),
      surfaceBright: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFFFFFFF),
      surfaceContainer: Color(0xFFFBFBFB),
      surfaceContainerHigh: Color(0xFFF5F5F5),
      surfaceContainerHighest: Color(0xFFEFEFEF),
      onSurfaceVariant: Color(0xFF1B1B1B),
      outline: Color(0xFF474747),
      outlineVariant: Color(0xFFABABAB),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF232323),
      onInverseSurface: Color(0xFFF9F9F9),
      inversePrimary: Color(0xFFDAE2FD),
      surfaceTint: Color(0xFF565E74),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff234373),
      surfaceTint: Color(0xff415f91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5875a8),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3a4354),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c7588),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff523a58),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff876b8c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff40434a),
      outline: Color(0xff5c5f67),
      outlineVariant: Color(0xff787a83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3036),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xff5875a8),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3e5c8e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c7588),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff535c6f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff876b8c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6d5372),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00214a),
      surfaceTint: Color(0xff415f91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff234373),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff192232),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3a4354),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff301a35),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff523a58),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff21242b),
      outline: Color(0xff40434a),
      outlineVariant: Color(0xff40434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3036),
      inversePrimary: Color(0xffe5ecff),
      primaryFixed: Color(0xff234373),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff042c5b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3a4354),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff242d3d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff523a58),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3b2440),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFF8FAFC),
      onPrimary: Color(0xFF141414),
      primaryContainer: Color(0xFF565E74),
      onPrimaryContainer: Color(0xFFF6F6FF),
      primaryFixed: Color(0xFFE2E7FF),
      primaryFixedDim: Color(0xFFCAD1EB),
      onPrimaryFixed: Color(0xFF0B1326),
      onPrimaryFixedVariant: Color(0xFF171F33),
      secondary: Color(0xFF1E293B),
      onSecondary: Color(0xFFF1F2F4),
      secondaryContainer: Color(0xFF73787B),
      onSecondaryContainer: Color(0xFFF0F4F8),
      secondaryFixed: Color(0xFFE4E9ED),
      secondaryFixedDim: Color(0xFFCED2D6),
      onSecondaryFixed: Color(0xFF0F1417),
      onSecondaryFixedVariant: Color(0xFF1B2023),
      tertiary: Color(0xFFD6DADE),
      onTertiary: Color(0xFF0D1214),
      tertiaryContainer: Color(0xFF1E293B),
      onTertiaryContainer: Color(0xFFE4E6E9),
      tertiaryFixed: Color(0xFFE4E9ED),
      tertiaryFixedDim: Color(0xFFCED2D6),
      onTertiaryFixed: Color(0xFF0F1417),
      onTertiaryFixedVariant: Color(0xFF1B2023),
      error: Color(0xFF7F1D1D),
      onError: Color(0xFFF9F1F1),
      errorContainer: Color(0xFF852221),
      onErrorContainer: Color(0xFFFFEDEB),
      surface: Color(0xFF0E0E0E),
      onSurface: Color(0xFFF1F1F1),
      surfaceDim: Color(0xFF131313),
      surfaceBright: Color(0xFF393939),
      surfaceContainerLowest: Color(0xFF070707),
      surfaceContainerLow: Color(0xFF131313),
      surfaceContainer: Color(0xFF1F1F1F),
      surfaceContainerHigh: Color(0xFF2A2A2A),
      surfaceContainerHighest: Color(0xFF353535),
      onSurfaceVariant: Color(0xFFE2E2E2),
      outline: Color(0xFF919191),
      outlineVariant: Color(0xFF5E5E5E),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE2E2E2),
      onInverseSurface: Color(0xFF1B1B1B),
      inversePrimary: Color(0xFF565E74),
      surfaceTint: Color(0xFFBEC6E0),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1cbff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff001634),
      primaryContainer: Color(0xff7491c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc2cbe0),
      onSecondary: Color(0xff0d1626),
      secondaryContainer: Color(0xff8891a5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe1c0e5),
      onTertiary: Color(0xff230e29),
      tertiaryContainer: Color(0xffa487a9),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xfffbfaff),
      onSurfaceVariant: Color(0xffc8cad4),
      outline: Color(0xffa0a3ac),
      outlineVariant: Color(0xff80838c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff294878),
      primaryFixed: Color(0xffd6e3ff),
      onPrimaryFixed: Color(0xff00112b),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff133665),
      secondaryFixed: Color(0xffdae2f9),
      onSecondaryFixed: Color(0xff081121),
      secondaryFixedDim: Color(0xffbec6dc),
      onSecondaryFixedVariant: Color(0xff2e3647),
      tertiaryFixed: Color(0xfffad8fd),
      onTertiaryFixed: Color(0xff1d0823),
      tertiaryFixedDim: Color(0xffddbce0),
      onTertiaryFixedVariant: Color(0xff452e4a),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb1cbff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc2cbe0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe1c0e5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc8cad4),
      outlineVariant: Color(0xffc8cad4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff002959),
      primaryFixed: Color(0xffdde7ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb1cbff),
      onPrimaryFixedVariant: Color(0xff001634),
      secondaryFixed: Color(0xffdee7fd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc2cbe0),
      onSecondaryFixedVariant: Color(0xff0d1626),
      tertiaryFixed: Color(0xfffcddff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe1c0e5),
      onTertiaryFixedVariant: Color(0xff230e29),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
