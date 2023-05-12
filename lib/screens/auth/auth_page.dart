import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/screens/homepage_screens/homepage.dart';
import 'package:money_tracker/screens/login_screens/sign_in.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            // User is logged in, display home screen
            return HomePage();
          } else {
            // User is not logged in, display login screen

            // IMPORTANT NOTE, KALAU KU TARUH LoginPage DISINI
            // DIA NGGA BAKAL KE DETECT LOGINNYA 
            // JADI HARUS LANGSUNG TARUH SignIn PAGENYA !!!!!
            return SignIn();
          }
        }),
      ),
    );
  }
}
