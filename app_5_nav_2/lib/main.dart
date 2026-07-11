import 'package:app_5_nav_2/pages/home_page.dart';
import 'package:app_5_nav_2/pages/main_page.dart';
import 'package:app_5_nav_2/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white), // back arrow color
        ),
      ),
      home: MainPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage(),
      },
    );
  }
}