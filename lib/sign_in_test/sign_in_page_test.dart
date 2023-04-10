import 'package:flutter/material.dart';
import 'package:money_tracker/screens/auth/auth_service.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class SignInTest extends StatefulWidget {
  const SignInTest({super.key});

  @override
  State<SignInTest> createState() => _SignInTestState();
}

class _SignInTestState extends State<SignInTest> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "Email",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Util.getLoginTextField(
            controller: _emailController,
            textInputType: TextInputType.emailAddress,
          ),
          Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Util.getLoginTextField(
            controller: _passwordController,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          Column(
            children: [
              Text("Divider"),
              Util.getNormalButton(
                text: "Login",
                function: (() {
                  AuthService.signInUser(
                    emailController: _emailController.text,
                    passwordController: _passwordController.text,
                  );
                }),
              ),
            ],
          )
        ],
      )),
    );
  }
}
