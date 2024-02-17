import 'package:flutter/material.dart';
import "../blocs/bloc.dart";

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
    return StreamBuilder<String?>(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
            onChanged: (newValue) {
              bloc.changeEmail(newValue);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email Address",
              hintText: " you@example.com",
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ));
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder<String?>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Password",
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
          );
        });
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
