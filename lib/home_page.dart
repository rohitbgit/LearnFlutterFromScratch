import "package:flutter/material.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Design"),
      ),
      body: const Center(
        child: Text("Welcome to the flutter"),
      ),
    );
  }
}
