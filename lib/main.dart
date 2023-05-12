import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:money_tracker/screens/auth/auth_page.dart';
import 'package:money_tracker/screens/homepage_screens/homepage.dart';
import 'package:money_tracker/screens/login_screens/forgot_password.dart';
import 'package:money_tracker/screens/login_screens/sign_in.dart';
import 'package:money_tracker/screens/login_screens/sign_up_phase1.dart';
import 'package:money_tracker/testing/validate_test.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
    );
  }
}

class MyAppForTest extends StatelessWidget {
  const MyAppForTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPhase1(),
    );
  }
}
