import 'package:flutter/material.dart';
import 'package:trelloappclone_flutter/core/colors_manager.dart';

class ThemesManager {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: ColorsManager.brandColor,
      outline: ColorsManager.brandColor,
      secondary: ColorsManager.brandColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.brandColor,
        foregroundColor: ColorsManager.whiteShade,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
  );
}
