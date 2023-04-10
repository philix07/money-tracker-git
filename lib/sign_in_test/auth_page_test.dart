import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/screens/homepage_screens/homepage.dart';
import 'package:money_tracker/screens/login_screens/login_page.dart';
import 'package:money_tracker/sign_in_test/sign_in_page_test.dart';
import 'package:money_tracker/sign_in_test/sign_out_page_test.dart';

class AuthPageTest extends StatefulWidget {
  const AuthPageTest({super.key});

  @override
  State<AuthPageTest> createState() => _AuthPageTestState();
}

class _AuthPageTestState extends State<AuthPageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            // User is logged in, display home screen
            return SignOutTest();
          } else {
            // User is not logged in, display login screen
            return SignInTest();
          }
        }),
      ),
    );
  }
}
