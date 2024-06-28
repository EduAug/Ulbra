import 'package:flutter/material.dart';
import '../services/firebase/auth/auth_firebase.dart';

class RegisterScreen extends StatelessWidget {
  final AuthFirebase _auth = AuthFirebase();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  RegisterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registre-se"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
              onPressed: () {
                final String email = _emailController.text;
                final String password = _passwordController.text;
                _auth.register(email, password);
                Navigator.pop(context);
              },
              child: const Text("Registrar-se"),
            )
          ],
        ),
      ),
    );
  }
}
