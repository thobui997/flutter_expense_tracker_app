import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

void main() {
  runApp(const App());
}

final lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 88, 39, 204),
);

final darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 109, 7, 87),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: darkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColorScheme.primaryContainer,
            foregroundColor: darkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: lightColorScheme.onPrimaryContainer,
          foregroundColor: lightColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: lightColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: lightColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: lightColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    );
  }
}
