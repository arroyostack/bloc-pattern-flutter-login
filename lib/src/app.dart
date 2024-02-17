import "package:flutter/material.dart";
import "screens/loging_screen.dart";
import "./blocs/providers.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: const MaterialApp(
        title: "Hello, World!",
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}

// Just inserted the provider. Need to continue in "Accesing the bloc".