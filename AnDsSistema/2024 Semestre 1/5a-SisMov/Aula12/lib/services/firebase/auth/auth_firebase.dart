import 'dart:async';

import 'package:aula12_api/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../utils/results.dart';

class AuthFirebase{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<UserModel> get user{
    return _auth.authStateChanges().map((user){
      return UserModel(email: user?.email ?? "");
    });
  }
  Future<void> register(String email, String password) async{
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch (e) {
      throw e;
    }
  }

  final StreamController<Results> _resultsLogin= StreamController<Results>.broadcast();

  Stream<Results> get resultsLogin=> _resultsLogin.stream;

  Future<void> signIn(String email, String password) async{
    _resultsLogin.add(Loading());
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _resultsLogin.add(SuccessResults());
    }catch (e) {
      _resultsLogin.add(ErrorResults());
      throw e;
    }
  }

  signOut() async{
    await _auth.signOut();
  }
}