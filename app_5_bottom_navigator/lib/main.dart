import 'package:app_5_bottom_navigator/pages/home_page.dart';
import 'package:app_5_bottom_navigator/pages/main_page.dart';
import 'package:app_5_bottom_navigator/pages/profile_page.dart';
import 'package:app_5_bottom_navigator/pages/settings_page.dart';
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
          iconTheme: IconThemeData(color: Colors.white),
        )
      ),
      home: MainPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        'settingspage': (context) => SettingsPage(),
        'profilepage' : (context) => ProfilePage(),
      },
    );
  }
}