import 'package:firebase_auth/firebase_auth.dart';
import 'package:money_tracker/models/user_model.dart';
import 'package:money_tracker/services/database.dart';

class AuthService {
  static void signInUser({
    required String emailController,
    required String passwordController,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
    } catch (e) {
      print(e.toString());
    }
  }

  static void registerUser({
    required String emailController,
    required String passwordController,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );

      // Setting default data based on current logged in user.
      var user = FirebaseAuth.instance.currentUser;
      await DatabaseService(uid: user!.uid).defaultUserData(UserModel());

      print(UserModel().toJson());
    } catch (e) {
      print(e.toString());
    }
  }

  static void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  static void forgotPassword(email) {
    try {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }
}
