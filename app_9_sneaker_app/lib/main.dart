import 'package:app_9_sneaker_app/pages/intro_page.dart';
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
        dividerTheme: const DividerThemeData(color: Colors.transparent),
      ),
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
