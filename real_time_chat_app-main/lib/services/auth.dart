import 'package:chat_app/model/userdata.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authmethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  UserData _userFromFirebase(FirebaseUser user) {
    return user != null ? UserData(userId: user.uid) : null;
  }
//Sign In Function

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

//Sign Up Function

  Future SignUpWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(//UserCredential
          email: email, password: password);
      FirebaseUser firebaseUser = result.user; //User
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

//Reset Function
  Future resetPass(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

//Sign Out function
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
