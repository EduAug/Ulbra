import 'package:ap2_pokedex/pages/login_page.dart';
import 'package:ap2_pokedex/services/firebase/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitializeApp()
    );
  }
}

class InitializeApp extends StatelessWidget {
  final AuthFirebase _authFirebase= AuthFirebase();
  InitializeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: _authFirebase.user, builder: (context, snapshot){
      if(snapshot.connectionState== ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
      }
      return const LoginPage();
    });
  }
}

