import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 165, 169, 255),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 42, 16, 58),
);
void main() {
  // // here first  lock orientation then run app
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn){
  //   // here runApp
  // });

  runApp(
    MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,

      //Dark Theme
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        // copyWith() - we are ovrriding default style to customize our style

        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer),
        ),
      ),

      //Light Theme
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        // copyWith() - we are ovrriding default style to customize our style

        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),

        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),

        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
              ),
            ),
      ),
      // themeMode: ThemeMode.dark, //default
      home: Expenses(),
    ),
  );
}
