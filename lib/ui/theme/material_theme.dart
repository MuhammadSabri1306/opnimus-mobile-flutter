import "package:flutter/material.dart";
import 'util.dart';

class MaterialTheme {

  static bool isDarkMode = false;
  static TextTheme? textTheme;

  MaterialTheme({ required BuildContext context, bool? useDarkMode }) {
    textTheme = createTextTheme(context, "Poppins", "Poppins");
    isDarkMode = useDarkMode ?? isplatformBrightnessDark(context);
  }

  static bool isplatformBrightnessDark(BuildContext context) {
    return View.of(context).platformDispatcher.platformBrightness == Brightness.dark;
  }

  static ThemeData toThemeData(MaterialScheme scheme) {
    return theme(scheme.toColorScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme?.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    // scaffoldBackgroundColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  ThemeData getSelectedTheme() {
    var selectedScheme = isDarkMode ? darkScheme() : lightScheme();
    return theme( selectedScheme.toColorScheme() );
  }

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xFF435E91),
      surfaceTint: Color(0xFF435E91),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD7E2FF),
      onPrimaryContainer: Color(0xFF001A40),
      secondary: Color(0xFF565E71),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFDAE2F9),
      onSecondaryContainer: Color(0xFF131C2C),
      tertiary: Color(0xFF705574),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFBD7FC),
      onTertiaryContainer: Color(0xFF29132E),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFF9F9FF),
      onBackground: Color(0xFF1A1B20),
      surface: Color(0xFFF9F9FF),
      onSurface: Color(0xFF1A1B20),
      surfaceVariant: Color(0xFFE0E2EC),
      onSurfaceVariant: Color(0xFF44474E),
      outline: Color(0xFF74777F),
      outlineVariant: Color(0xFFC4C6D0),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF2E3036),
      inverseOnSurface: Color(0xFFF0F0F7),
      inversePrimary: Color(0xFFACC7FF),
      primaryFixed: Color(0xFFD7E2FF),
      onPrimaryFixed: Color(0xFF001A40),
      primaryFixedDim: Color(0xFFACC7FF),
      onPrimaryFixedVariant: Color(0xFF2A4677),
      secondaryFixed: Color(0xFFDAE2F9),
      onSecondaryFixed: Color(0xFF131C2C),
      secondaryFixedDim: Color(0xFFBEC6DC),
      onSecondaryFixedVariant: Color(0xFF3F4759),
      tertiaryFixed: Color(0xFFFBD7FC),
      onTertiaryFixed: Color(0xFF29132E),
      tertiaryFixedDim: Color(0xFFDDBCDF),
      onTertiaryFixedVariant: Color(0xFF573E5B),
      surfaceDim: Color(0xFFD9D9E0),
      surfaceBright: Color(0xFFF9F9FF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF3F3FA),
      surfaceContainer: Color(0xFFEDEDF4),
      surfaceContainerHigh: Color(0xFFE8E7EE),
      surfaceContainerHighest: Color(0xFFE2E2E9),
    );
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xFF254273),
      surfaceTint: Color(0xFF435E91),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF5974A9),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF3B4355),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF6C7588),
      onSecondaryContainer: Color(0xFFFFFFFF),
      tertiary: Color(0xFF533A57),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF886B8B),
      onTertiaryContainer: Color(0xFFFFFFFF),
      error: Color(0xFF8C0009),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFDA342E),
      onErrorContainer: Color(0xFFFFFFFF),
      background: Color(0xFFF9F9FF),
      onBackground: Color(0xFF1A1B20),
      surface: Color(0xFFF9F9FF),
      onSurface: Color(0xFF1A1B20),
      surfaceVariant: Color(0xFFE0E2EC),
      onSurfaceVariant: Color(0xFF40434A),
      outline: Color(0xFF5C5F67),
      outlineVariant: Color(0xFF787A83),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF2E3036),
      inverseOnSurface: Color(0xFFF0F0F7),
      inversePrimary: Color(0xFFACC7FF),
      primaryFixed: Color(0xFF5974A9),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF405C8E),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),
      secondaryFixed: Color(0xFF6C7588),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFF545C6F),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),
      tertiaryFixed: Color(0xFF886B8B),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF6E5371),
      onTertiaryFixedVariant: Color(0xFFFFFFFF),
      surfaceDim: Color(0xFFD9D9E0),
      surfaceBright: Color(0xFFF9F9FF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF3F3FA),
      surfaceContainer: Color(0xFFEDEDF4),
      surfaceContainerHigh: Color(0xFFE8E7EE),
      surfaceContainerHighest: Color(0xFFE2E2E9),
    );
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xFF00214C),
      surfaceTint: Color(0xFF435E91),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF254273),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF1A2233),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF3B4355),
      onSecondaryContainer: Color(0xFFFFFFFF),
      tertiary: Color(0xFF301A35),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF533A57),
      onTertiaryContainer: Color(0xFFFFFFFF),
      error: Color(0xFF4E0002),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFF8C0009),
      onErrorContainer: Color(0xFFFFFFFF),
      background: Color(0xFFF9F9FF),
      onBackground: Color(0xFF1A1B20),
      surface: Color(0xFFF9F9FF),
      onSurface: Color(0xFF000000),
      surfaceVariant: Color(0xFFE0E2EC),
      onSurfaceVariant: Color(0xFF21242B),
      outline: Color(0xFF40434A),
      outlineVariant: Color(0xFF40434A),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF2E3036),
      inverseOnSurface: Color(0xFFFFFFFF),
      inversePrimary: Color(0xFFE6ECFF),
      primaryFixed: Color(0xFF254273),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF082B5C),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),
      secondaryFixed: Color(0xFF3B4355),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFF252D3D),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),
      tertiaryFixed: Color(0xFF533A57),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF3B2440),
      onTertiaryFixedVariant: Color(0xFFFFFFFF),
      surfaceDim: Color(0xFFD9D9E0),
      surfaceBright: Color(0xFFF9F9FF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF3F3FA),
      surfaceContainer: Color(0xFFEDEDF4),
      surfaceContainerHigh: Color(0xFFE8E7EE),
      surfaceContainerHighest: Color(0xFFE2E2E9),
    );
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFACC7FF),
      surfaceTint: Color(0xFFACC7FF),
      onPrimary: Color(0xFF0E2F60),
      primaryContainer: Color(0xFF2A4677),
      onPrimaryContainer: Color(0xFFD7E2FF),
      secondary: Color(0xFFBEC6DC),
      onSecondary: Color(0xFF283041),
      secondaryContainer: Color(0xFF3F4759),
      onSecondaryContainer: Color(0xFFDAE2F9),
      tertiary: Color(0xFFDDBCDF),
      onTertiary: Color(0xFF3F2844),
      tertiaryContainer: Color(0xFF573E5B),
      onTertiaryContainer: Color(0xFFFBD7FC),
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      errorContainer: Color(0xFF93000A),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF111318),
      onBackground: Color(0xFFE2E2E9),
      surface: Color(0xFF111318),
      onSurface: Color(0xFFE2E2E9),
      surfaceVariant: Color(0xFF44474E),
      onSurfaceVariant: Color(0xFFC4C6D0),
      outline: Color(0xFF8E9099),
      outlineVariant: Color(0xFF44474E),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE2E2E9),
      inverseOnSurface: Color(0xFF2E3036),
      inversePrimary: Color(0xFF435E91),
      primaryFixed: Color(0xFFD7E2FF),
      onPrimaryFixed: Color(0xFF001A40),
      primaryFixedDim: Color(0xFFACC7FF),
      onPrimaryFixedVariant: Color(0xFF2A4677),
      secondaryFixed: Color(0xFFDAE2F9),
      onSecondaryFixed: Color(0xFF131C2C),
      secondaryFixedDim: Color(0xFFBEC6DC),
      onSecondaryFixedVariant: Color(0xFF3F4759),
      tertiaryFixed: Color(0xFFFBD7FC),
      onTertiaryFixed: Color(0xFF29132E),
      tertiaryFixedDim: Color(0xFFDDBCDF),
      onTertiaryFixedVariant: Color(0xFF573E5B),
      surfaceDim: Color(0xFF111318),
      surfaceBright: Color(0xFF37393E),
      surfaceContainerLowest: Color(0xFF0C0E13),
      surfaceContainerLow: Color(0xFF1A1B20),
      surfaceContainer: Color(0xFF1E2025),
      surfaceContainerHigh: Color(0xFF282A2F),
      surfaceContainerHighest: Color(0xFF33353A),
    );
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFB3CBFF),
      surfaceTint: Color(0xFFACC7FF),
      onPrimary: Color(0xFF001536),
      primaryContainer: Color(0xFF7691C7),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFFC3CBE0),
      onSecondary: Color(0xFF0E1626),
      secondaryContainer: Color(0xFF8891A5),
      onSecondaryContainer: Color(0xFF000000),
      tertiary: Color(0xFFE2C0E4),
      onTertiary: Color(0xFF230E28),
      tertiaryContainer: Color(0xFFA587A8),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFFFBAB1),
      onError: Color(0xFF370001),
      errorContainer: Color(0xFFFF5449),
      onErrorContainer: Color(0xFF000000),
      background: Color(0xFF111318),
      onBackground: Color(0xFFE2E2E9),
      surface: Color(0xFF111318),
      onSurface: Color(0xFFFBFAFF),
      surfaceVariant: Color(0xFF44474E),
      onSurfaceVariant: Color(0xFFC9CAD4),
      outline: Color(0xFFA0A2AC),
      outlineVariant: Color(0xFF80838C),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE2E2E9),
      inverseOnSurface: Color(0xFF282A2F),
      inversePrimary: Color(0xFF2B4779),
      primaryFixed: Color(0xFFD7E2FF),
      onPrimaryFixed: Color(0xFF00102C),
      primaryFixedDim: Color(0xFFACC7FF),
      onPrimaryFixedVariant: Color(0xFF163566),
      secondaryFixed: Color(0xFFDAE2F9),
      onSecondaryFixed: Color(0xFF081121),
      secondaryFixedDim: Color(0xFFBEC6DC),
      onSecondaryFixedVariant: Color(0xFF2E3647),
      tertiaryFixed: Color(0xFFFBD7FC),
      onTertiaryFixed: Color(0xFF1D0823),
      tertiaryFixedDim: Color(0xFFDDBCDF),
      onTertiaryFixedVariant: Color(0xFF462E4A),
      surfaceDim: Color(0xFF111318),
      surfaceBright: Color(0xFF37393E),
      surfaceContainerLowest: Color(0xFF0C0E13),
      surfaceContainerLow: Color(0xFF1A1B20),
      surfaceContainer: Color(0xFF1E2025),
      surfaceContainerHigh: Color(0xFF282A2F),
      surfaceContainerHighest: Color(0xFF33353A),
    );
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFBFAFF),
      surfaceTint: Color(0xFFACC7FF),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFFB3CBFF),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFFFBFAFF),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFFC3CBE0),
      onSecondaryContainer: Color(0xFF000000),
      tertiary: Color(0xFFFFF9FA),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFFE2C0E4),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFFFF9F9),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFFFBAB1),
      onErrorContainer: Color(0xFF000000),
      background: Color(0xFF111318),
      onBackground: Color(0xFFE2E2E9),
      surface: Color(0xFF111318),
      onSurface: Color(0xFFFFFFFF),
      surfaceVariant: Color(0xFF44474E),
      onSurfaceVariant: Color(0xFFFBFAFF),
      outline: Color(0xFFC9CAD4),
      outlineVariant: Color(0xFFC9CAD4),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE2E2E9),
      inverseOnSurface: Color(0xFF000000),
      inversePrimary: Color(0xFF042959),
      primaryFixed: Color(0xFFDEE7FF),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFFB3CBFF),
      onPrimaryFixedVariant: Color(0xFF001536),
      secondaryFixed: Color(0xFFDFE7FD),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFFC3CBE0),
      onSecondaryFixedVariant: Color(0xFF0E1626),
      tertiaryFixed: Color(0xFFFEDCFF),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFFE2C0E4),
      onTertiaryFixedVariant: Color(0xFF230E28),
      surfaceDim: Color(0xFF111318),
      surfaceBright: Color(0xFF37393E),
      surfaceContainerLowest: Color(0xFF0C0E13),
      surfaceContainerLow: Color(0xFF1A1B20),
      surfaceContainer: Color(0xFF1E2025),
      surfaceContainerHigh: Color(0xFF282A2F),
      surfaceContainerHighest: Color(0xFF33353A),
    );
  }

  List<ExtendedColor> get extendedColors => [];

}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      // background: background,
      // onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      // surfaceVariant: surfaceVariant,
      // onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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

class MaterialPalettes {
  static Map<int, Color> getBlue() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF00031B),
      10: const Color(0xFF010619),
      15: const Color(0xFF070E33),
      20: const Color(0xFF0E162E),
      25: const Color(0xFF141E38),
      30: const Color(0xFF1B2643),
      35: const Color(0xFF212E4D),
      40: const Color(0xFF283658),
      50: const Color(0xFF35466D),
      60: const Color(0xFF455883),
      70: const Color(0xFF7381A2),
      80: const Color(0xFFA1AAC1),
      90: const Color(0xFFCFD3E0),
      95: const Color(0xFFE6E9EF),
      98: const Color(0xFFF2F4F7),
      99: const Color(0xFFF8F9FB),
      100: const Color(0xFFFFFFFF),
    };
  }

  static Map<int, Color> getPrimary() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF00102C),
      10: const Color(0xFF001A40),
      15: const Color(0xFF06254F),
      20: const Color(0xFF15305A),
      25: const Color(0xFF223B66),
      30: const Color(0xFF2E4672),
      35: const Color(0xFF3A527F),
      40: const Color(0xFF465E8C),
      50: const Color(0xFF5F77A6),
      60: const Color(0xFF7991C1),
      70: const Color(0xFF93ABDD),
      80: const Color(0xFFAFC7FA),
      90: const Color(0xFFD7E2FF),
      95: const Color(0xFFEDF0FF),
      98: const Color(0xFFF9F9FF),
      99: const Color(0xFFFEFBFF),
      100: const Color(0xFFFFFFFF),
    };
  }

  static Map<int, Color> getSecondary() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF0C111B),
      10: const Color(0xFF171C26),
      15: const Color(0xFF212630),
      20: const Color(0xFF2C303B),
      25: const Color(0xFF373B47),
      30: const Color(0xFF424752),
      35: const Color(0xFF4E525E),
      40: const Color(0xFF5A5E6A),
      50: const Color(0xFF727783),
      60: const Color(0xFF8C909E),
      70: const Color(0xFFA7ABB8),
      80: const Color(0xFFC2C6D4),
      90: const Color(0xFFDEE2F1),
      95: const Color(0xFFEDF0FF),
      98: const Color(0xFFF9F9FF),
      99: const Color(0xFFFEFBFF),
      100: const Color(0xFFFFFFFF),
    };
  }

  static Map<int, Color> getTertiary() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF190C1C),
      10: const Color(0xFF251627),
      15: const Color(0xFF302132),
      20: const Color(0xFF3B2B3D),
      25: const Color(0xFF463648),
      30: const Color(0xFF524154),
      35: const Color(0xFF5E4D60),
      40: const Color(0xFF6B586C),
      50: const Color(0xFF847185),
      60: const Color(0xFF9F8AA0),
      70: const Color(0xFFBAA4BB),
      80: const Color(0xFFD7BFD6),
      90: const Color(0xFFF4DBF3),
      95: const Color(0xFFFFEBFD),
      98: const Color(0xFFFFF7FA),
      99: const Color(0xFFFFFBFF),
      100: const Color(0xFFFFFFFF),
    };
  }

  static Map<int, Color> getNeutral() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF101113),
      10: const Color(0xFF1B1B1D),
      15: const Color(0xFF252628),
      20: const Color(0xFF303032),
      25: const Color(0xFF3B3B3D),
      30: const Color(0xFF474649),
      35: const Color(0xFF525254),
      40: const Color(0xFF5E5E60),
      50: const Color(0xFF777779),
      60: const Color(0xFF919093),
      70: const Color(0xFFACABAD),
      80: const Color(0xFFC8C6C8),
      90: const Color(0xFFE4E2E4),
      95: const Color(0xFFF2F0F2),
      98: const Color(0xFFFBF8FB),
      99: const Color(0xFFFEFBFE),
      100: const Color(0xFFFFFFFF),
    };
  }

  static Map<int, Color> getNeutralVariant() {
    return {
      0: const Color(0xFF000000),
      5: const Color(0xFF0F1115),
      10: const Color(0xFF1A1B20),
      15: const Color(0xFF24262A),
      20: const Color(0xFF2F3035),
      25: const Color(0xFF3A3B40),
      30: const Color(0xFF45474C),
      35: const Color(0xFF515257),
      40: const Color(0xFF5D5E63),
      50: const Color(0xFF76777C),
      60: const Color(0xFF909096),
      70: const Color(0xFFAAABB1),
      80: const Color(0xFFC6C6CC),
      90: const Color(0xFFE2E2E8),
      95: const Color(0xFFF1F0F6),
      98: const Color(0xFFF9F9FF),
      99: const Color(0xFFFEFBFF),
      100: const Color(0xFFFFFFFF),
    };
  }
}

class MaterialPalettesBase {
  static var light = MaterialPalettes.getBlue()[90];
  static var blueLight = MaterialPalettes.getBlue()[60];
  static var blueDark = MaterialPalettes.getBlue()[10];
}