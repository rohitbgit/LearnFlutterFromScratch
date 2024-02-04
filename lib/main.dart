import 'package:flutter/material.dart';
import 'package:flutter_app_tutorial/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {'/MyHomePage': (context) => const MyHomePage()},
    );
  }
}
