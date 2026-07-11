import 'package:app_8_todo_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{

  //init the Hive
  await Hive.initFlutter();

  //OPen a Box
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}