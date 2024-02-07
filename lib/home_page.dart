import "package:flutter/material.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Main Screen"),
      ),
      body: Center(
        child: Text("Welcome to Home Page My Dear!!!"),
      ),
    );
  }
}
