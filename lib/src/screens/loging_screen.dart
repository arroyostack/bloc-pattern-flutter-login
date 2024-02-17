import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/providers.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context) ?? Bloc();
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            emailField(bloc),
            passwordField(bloc),
            Container(margin: const EdgeInsets.only(top: 25)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  // Form fields widgets.

  Widget emailField(Bloc bloc) {
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

  Widget passwordField(Bloc bloc) {
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
