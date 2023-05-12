import 'package:flutter/material.dart';
import 'package:money_tracker/screens/login_screens/sign_up_phase1.dart';
import 'package:money_tracker/services/auth.dart';
import 'package:money_tracker/screens/login_screens/forgot_password.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/font_utils.dart';
import 'package:money_tracker/utils/logo_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              LogoUtil.getLogo(),
              Text(
                'Log In',
                style: FontsUtil.getParagraphStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                "What's your email",
                style: FontsUtil.getParagraphStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Util.getLoginTextField(
                controller: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Enter your password",
                style: FontsUtil.getParagraphStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Util.getLoginTextField(
                controller: _passwordController,
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpPhase1(),
                          ),
                        );
                      },
                      child: Text(
                        "register new account",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: ColorsUtil.btn,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'forgot password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: ColorsUtil.btn,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
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
          ),
        ),
      ),
    );
  }
}
