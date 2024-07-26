import 'package:flutter/material.dart';
import 'package:expense/widgets/expense.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF333333), // Charcoal
);

var KDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFFFFD700), // Gold
);

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: KDarkColorScheme,
      cardTheme: CardTheme(
        color: KDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: KDarkColorScheme.primaryContainer,
          foregroundColor: KDarkColorScheme.onPrimaryContainer,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: KDarkColorScheme.primary,
        foregroundColor: KDarkColorScheme.onPrimary,
      ),
      textTheme: ThemeData.dark().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: KDarkColorScheme.onSecondaryContainer,
              fontSize: 15,
            ),
          ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: kColorScheme.primary,
        foregroundColor: kColorScheme.onPrimary,
      ),
      cardTheme: CardTheme(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 15,
            ),
          ),
    ),
    themeMode: ThemeMode.system,
    home: const ExpensePage(),
    debugShowCheckedModeBanner: false,
  ));
}
