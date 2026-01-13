import 'package:flutter/material.dart';
import 'package:atmadarsh/presentation/screens/home_page.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';
import 'config_editor/config_editor_screen.dart';
import 'package:atmadarsh/data/models/portfolio_config.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load JSON file
  final jsonString = await rootBundle
      .loadString("assets/portfolio_config_json.json");

  // Decode JSON → Model
  final config =
  PortfolioConfig.fromJson(jsonDecode(jsonString));

  runApp(MyApp(initialConfig: config));
}

class MyApp extends StatelessWidget {
  final PortfolioConfig initialConfig;
  const MyApp({super.key, required this.initialConfig});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atmadarsh',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: AppColors.darkGrey,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryBlack,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.textWhite),
          titleTextStyle: TextStyle(
            color: AppColors.textWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textWhite, fontSize: 16),
          bodyMedium: TextStyle(color: AppColors.textGrey, fontSize: 14),
          headlineMedium: TextStyle(color: AppColors.textWhite, fontSize: 24),
        ),
        iconTheme: const IconThemeData(color: AppColors.textWhite),
        dividerColor: AppColors.dividerGrey,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryBlack,
          secondary: AppColors.lightGrey,
          surface: AppColors.darkGrey,
          onPrimary: AppColors.textWhite,
          onSurface: AppColors.textWhite,
        ),
      ),
      home:HomePage(),
      // home: ConfigEditorScreen(initialConfig: initialConfig,),
    );
  }
}