import "package:flutter/material.dart";
import "package:flutter_app_tutorial/home_page.dart";

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String name = "";
  bool changeButton = false;
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
                "Welcome to $name",
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
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
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

              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed(Duration(seconds: 2));

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(changeButton ? 30 : 8),
                    color: Colors.blue,
                  ),
                  child: changeButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                ),
              )

              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => MyHomePage()));
              //       print("navigate to main screen");
              //     },
              //     child: Text("Login"),
              //     style: TextButton.styleFrom(minimumSize: Size(200, 50))
              //     )
            ],
          ),
        ));
  }
}
