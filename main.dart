import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(), // Set LoginPage as the home page
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define variables to store username and password
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(vertical: 20),
      backgroundColor: Colors.blue,
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            '       Login Screen App         ',
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold
                // Set the color property in TextStyle
                ),
          )),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Code Play On",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) {
                _username = value;
              },
              decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  prefixIcon: const Icon(Icons.person)),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                _password = value;
              },
              obscureText: true, // Hide password
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.password),
              ),
            ),
            Text(
              "Forgot Password",
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Validate username and password here
                // For simplicity, let's just print them for now
                print('Username: ');
                print('Password: ');
              },
              style: styleFrom,
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
