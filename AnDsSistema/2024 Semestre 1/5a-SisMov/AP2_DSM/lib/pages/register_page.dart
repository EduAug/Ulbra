import 'package:flutter/material.dart';
import '../services/firebase/auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  final AuthFirebase _auth = AuthFirebase();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: Colors.red,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:26, bottom: 34),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.black)
                    )
                ),
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.black))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: ElevatedButton(
                onPressed: () {
                  final String email = _emailController.text;
                  final String password = _passwordController.text;
                  _auth.register(email, password);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    side: const BorderSide()
                ),
                child: const Text("Registrar-se")
              ),
            )
          ],
        ),
      ),
    );
  }
}
