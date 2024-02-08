import 'package:flutter/material.dart';
import 'package:flutter_app_tutorial/home_page.dart';
import 'package:flutter_app_tutorial/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
