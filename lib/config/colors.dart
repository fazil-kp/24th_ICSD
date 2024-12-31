import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get background => Theme.of(this).colorScheme.surface;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get onBackground => Theme.of(this).colorScheme.onSurface;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get secondary => Theme.of(this).colorScheme.secondary;
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0XFF2c0e4e),
  onPrimary: Color.fromARGB(255, 255, 255, 255),
  primaryContainer: Color.fromARGB(255, 255, 255, 255),
  onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
  secondary: Color(0xFF9229ff),
  onSecondary: Color.fromARGB(255, 255, 255, 255),
  secondaryContainer: Color(0xFFB3EBFF),
  onSecondaryContainer: Color.fromARGB(255, 0, 0, 0),
  tertiary: Color.fromARGB(255, 96, 100, 100),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFFF7D8FF),
  onTertiaryContainer: Color.fromARGB(255, 0, 0, 0),
  surface: Colors.white,
  onSurface: Color.fromARGB(255, 0, 0, 0),
  error: Color(0xFFEA1505),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color.fromARGB(255, 0, 0, 0),
  onSurfaceVariant: Color.fromARGB(255, 13, 131, 146),
  inversePrimary: Color(0xFF005FAF),
  inverseSurface: Color(0xFFE3E2E6),
  onInverseSurface: Color.fromARGB(255, 0, 0, 0),
  surfaceContainerHighest: Color.fromARGB(37, 0, 0, 0),
  shadow: Color.fromARGB(255, 0, 0, 0),
  surfaceTint: Color(0xFFE3E2E6),
  outline: Color(0xFFE3E2E6),
  outlineVariant: Color.fromARGB(255, 76, 21, 238),
  scrim: Color(0x4D000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Colors.red,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF004786),
  onPrimaryContainer: Color.fromARGB(255, 196, 195, 195),
  inversePrimary: Color(0xFF005FAF),
  secondary: Color(0xFF52A98A),
  onSecondary: Color.fromARGB(255, 36, 36, 36),
  secondaryContainer: Color(0xFF004E5F),
  onSecondaryContainer: Color(0xFFB3EBFF),
  tertiary: Color(0xFF1DB9DD),
  onTertiary: Color.fromARGB(255, 182, 181, 181),
  tertiaryContainer: Color(0xFF553F5D),
  onTertiaryContainer: Color(0xFFF7D8FF),
  surface: Color(0xFF313640),
  onSurface: Color.fromARGB(255, 211, 196, 255),
  surfaceTint: Color(0xFFFFFFFF),
  error: Color(0xFFEA1505),
  onError: Color(0xFFE8E5E5),
  errorContainer: Color(0xFFFFB70A),
  onErrorContainer: Color(0xFFB00020),
  surfaceContainerHighest: Color(0x26FFFFFF),
  onSurfaceVariant: Color(0xFFC3C6CF),
  inverseSurface: Color(0xFFE3E2E6),
  onInverseSurface: Color(0xFF1A1C1E),
  outline: Color(0x26FFFFFF),
  shadow: Color(0xFF000000),
);
