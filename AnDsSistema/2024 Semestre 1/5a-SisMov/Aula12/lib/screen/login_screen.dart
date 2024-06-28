import 'package:aula12_api/screen/home_screen.dart';
import 'package:aula12_api/screen/register_screen.dart';
import 'package:aula12_api/services/firebase/auth/auth_firebase.dart';
import 'package:flutter/material.dart';
import '../utils/results.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthFirebase _auth = AuthFirebase();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isVisible= true;

  void _signIn(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      await _auth.signIn(email, password);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Email ou senha não cadastrado(s)")));
    }
  }

  alterVisibility(){
    setState(() {
      isVisible= !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: StreamBuilder<Results>(
          stream: _auth.resultsLogin,
          builder: (context, snapshot){
            if(snapshot.data is Loading){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if(snapshot.data is SuccessResults){
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                  HomeScreen()
                ));
              });
            }
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    "RICK & MORTY LIST",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, bottom: 20),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.black)),
                    suffixIcon: IconButton(onPressed: (){
                      alterVisibility();
                    }, icon: const Icon(Icons.visibility))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_emailController.text.isEmpty || _emailController.text.contains(' ')) {
                          if (_passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                    Text("Esses campos são obrigatórios!")));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                    Text("Esses campos são obrigatórios!")));
                          }
                        } else if(_emailController.text.isNotEmpty && _passwordController.text.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                  Text("Esses campos são obrigatórios!")));
                        } else {
                          _signIn(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          side: const BorderSide()),
                      child: const Text("Login")),
                ), ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide()
                    ),
                    child: const Text("Registre-se")),
                if (snapshot.data is ErrorResults)
                  const Text("Autenticação falhou", style:
                    TextStyle(color: Colors.red)
                    ,)
              ],
            );
          },
        )
      ),
    );
  }
}
