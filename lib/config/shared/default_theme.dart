import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class DefaultTheme {
  final ThemeData theme;
  final ThemeData darkTheme;

  DefaultTheme({required this.theme, required this.darkTheme});
}

final DefaultTheme defaultTheme = DefaultTheme(
  // Light Theme
  theme: FlexThemeData.light(
    scheme: FlexScheme.cyanM3,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 10, // ทำให้พื้นหลังอ่อนขึ้น ไม่ขาวจ้าเกินไป
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      defaultRadius: 3.0,
    ),
    scaffoldBackground: Colors.grey[50], // พื้นหลังอ่อน
    useMaterial3: true,
    swapLegacyOnMaterial3: true, // ใช้ Material2 icons
    appBarStyle: FlexAppBarStyle.primary, // Back button ลูกศร
  ),

  // Dark Theme
  darkTheme: FlexThemeData.dark(
    scheme: FlexScheme.cyanM3,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      defaultRadius: 3.0,
    ),
    scaffoldBackground: Colors.grey[900], // พื้นหลังมืด
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    appBarStyle: FlexAppBarStyle.primary, // Back button ลูกศร
  ),
);
