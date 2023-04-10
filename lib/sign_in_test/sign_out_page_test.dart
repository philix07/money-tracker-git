import 'package:flutter/material.dart';
import 'package:money_tracker/screens/auth/auth_service.dart';
import 'package:money_tracker/utils/utils.dart';

class SignOutTest extends StatefulWidget {
  const SignOutTest({super.key});

  @override
  State<SignOutTest> createState() => _SignOutTestState();
}

class _SignOutTestState extends State<SignOutTest> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Util.getNormalButton(
        function: (() {
          AuthService.signOutUser();
        }),
        text: "Sign Out",
      ),
    );
  }
}
