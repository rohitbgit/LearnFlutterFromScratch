import "package:flutter/material.dart";
import "package:flutter_app_tutorial/home_page.dart";

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page Design"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/logins.png"),
              SizedBox(height: 12),
              Text(
                "Welcome to Login Page",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "password"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                    print("navigate to main screen");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(200, 50)))
            ],
          ),
        ));
  }
}
