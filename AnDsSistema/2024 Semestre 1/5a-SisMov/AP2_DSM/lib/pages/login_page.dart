import 'package:ap2_pokedex/pages/home_page.dart';
import 'package:ap2_pokedex/pages/register_page.dart';
import 'package:ap2_pokedex/services/firebase/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utils/generation.dart';
import '../utils/results.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Generation _selectedGen= Generation.gen5;
  final AuthFirebase _auth= AuthFirebase();
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _pwdController= TextEditingController();

  bool isVisible= true;

  alterVisibility(){
    setState(() {
      isVisible= !isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: StreamBuilder<Results>(
            stream: _auth.resultsLogin,
            builder: (context, snapshot){
              ErrorResults result= ErrorResults(code: "");

              if(snapshot.data is ErrorResults){
                result= snapshot.data as ErrorResults;
              }
              if(snapshot.data is LoadingResults){
                return const Center(
                  child: CircularProgressIndicator(color: Colors.red,),
                );
              }
              if(snapshot.data is SuccessResults){
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> HomePage(selectedGen: _selectedGen)
                  ));
                });
              }
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      "Regional PokéDex",
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
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  TextField(
                    controller: _pwdController,
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        suffixIcon: IconButton(onPressed: (){
                          alterVisibility();
                        }, icon: isVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 16),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_emailController.text.isEmpty || _emailController.text.contains(' ')) {
                            if (_pwdController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                      Text("Both fields are required!")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                      Text("Both fields are required!")));
                            }
                          } else if(_emailController.text.isNotEmpty && _pwdController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                    Text("Both fields are required!")));
                          } else {
                            _auth.signIn(_emailController.text, _pwdController.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: const BorderSide()),
                        child: const Text("Login")),
                  ), ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide()
                    ),
                    child: const Text("Sign Up")
                  ),
                  SizedBox(
                    height: 333, // Adjust the height as needed
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: Generation.values.map((gen) {
                        return RadioListTile<Generation>(
                          title: Text(gen.toString().split('.').last.toUpperCase()),
                          value: gen,
                          groupValue: _selectedGen,
                          onChanged: (Generation? value) {
                            setState(() {
                              _selectedGen= value!;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  if (snapshot.data is ErrorResults)
                    const Text("Authentication failed", style:
                    TextStyle(color: Colors.orange),
                      )
                ],
              );
            },
          )
      ),
    );
  }
}
