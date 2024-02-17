import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: const EdgeInsets.only(top: 25)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return const TextField(
        decoration: InputDecoration(
      labelText: "Email Address",
      hintText: " you@example.com",
    ));
  }

  Widget passwordField() {
    return const TextField(
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
    );
  }
}

Widget submitButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, // Add the color property here
    ),
    child: const Text("Login"),
    onPressed: () {},
  );
}
