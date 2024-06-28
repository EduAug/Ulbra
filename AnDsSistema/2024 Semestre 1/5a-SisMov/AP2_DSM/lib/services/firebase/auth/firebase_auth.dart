import 'dart:async';
import 'package:ap2_pokedex/utils/results.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import '../../../models/trainer.dart';

class AuthFirebase{
  final FirebaseAuth _auth= FirebaseAuth.instance;

  Stream<Trainer> get user{
    return _auth.authStateChanges().map((user){
      return Trainer(email: user?.email ?? "");
    });
  }

  Future<void> register(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      debugPrint(e.toString());
    }
  }

  final StreamController<Results> _resultsLogin= StreamController<Results>.broadcast();
  Stream<Results> get resultsLogin=> _resultsLogin.stream;

  Future<void> signIn(String email, String password) async{
    _resultsLogin.add(LoadingResults());
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _resultsLogin.add(SuccessResults());
    }on FirebaseAuthException catch (exception, e){
      _resultsLogin.add(ErrorResults(code: exception.code));
      debugPrint(e.toString());
    }
  }

  signOut() async{
    await _auth.signOut();
  }
}