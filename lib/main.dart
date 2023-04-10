import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:money_tracker/screens/auth/auth_page.dart';
import 'package:money_tracker/screens/homepage_screens/homepage.dart';
import 'package:money_tracker/sign_in_test/auth_page_test.dart';
import 'package:money_tracker/sign_in_test/sign_in_page_test.dart';

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
      home: AuthPageTest(),
    );
  }
}
