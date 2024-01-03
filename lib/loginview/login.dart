import 'package:flutter/material.dart';

// import 'login_controller.dart';

class Login extends StatefulWidget {
  // final LoginController controller;
  // const Login({super.key, required this.controller});

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        usernameField(),
        SizedBox(
          width: 10,
          height: 10,
        ),
        passwordField(),
        SizedBox(
          width: 20,
          height: 10,
        ),
        buttons(),
      ],
    );
  }

  Widget buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () {
              // this.widget.controller.registerAction();
            },
            child: const Text("Register")),
        SizedBox(width: 30, height: 10),
        ElevatedButton(
            onPressed: () {
              // this.widget.controller.loginAction();
            },
            child: const Text("Login")),
      ],
    );
  }

  Widget usernameField() {
    return TextField(
      // controller: widget.controller.passwordField,
      decoration: inputDecorationForLogin(
          "Username", "letters numbers and ( _ , - )", Icons.person),
    );
  }

  Widget passwordField() {
    return TextField(
      // controller: widget.controller.usernameField,
      decoration: inputDecorationForLogin(
          "Password", "letters numbers and ( _ , - )", Icons.password),
    );
  }

  InputDecoration inputDecorationForLogin(
      String labelText, String hintText, IconData prefix) {
    return InputDecoration(
      labelText: labelText, // Placeholder text
      hintText: hintText,
      prefixIcon: Icon(prefix), // Icon before the text input
      suffixIcon: Icon(Icons.clear), // Icon after the text input
      border: OutlineInputBorder(
        // Border outline
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Colors.black12,
      filled: true,
    );
  }
}
