import 'package:aula12_api/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<UserModel> get user{
    return _auth.authStateChanges().map((user){
      return UserModel(email: user?.email ?? "");
    });
  }

  Future<void> signIn(String email, String password) async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    }catch (e) {
      throw e;
    }
  }

  signOut() async{
    await _auth.signOut();
  }
}