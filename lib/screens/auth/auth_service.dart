import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static void signInUser({
    required String emailController,
    required String passwordController,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    );
  }

  static void signOutUser() {
    FirebaseAuth.instance.signOut();
  }
}
