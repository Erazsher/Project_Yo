import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  void _validate() {
    print(email.text);
    print(pass.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            obscureText: false,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: "Email",
            ),
            controller: email,
            keyboardType: TextInputType.number,
          ),
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.pin),

                // border: OutlineInputBorder()
                // labelText: 'Enter your PIN',
                hintText: "Enter Your PIN"),
            controller: pass,
            keyboardType: TextInputType.number,
          ),
          TextButton(
              onPressed: _validate,
              child: const Text(
                "LOGIN",
                style: TextStyle(fontSize: 30),
              )),
        ],
      ),
    );
  }
}
