import 'package:flutter/material.dart';
import 'package:money_tracker/screens/login_screens/sign_up_phase2.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/font_utils.dart';
import 'package:money_tracker/utils/logo_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class SignUpPhase1 extends StatefulWidget {
  const SignUpPhase1({super.key});

  @override
  State<SignUpPhase1> createState() => _SignUpPhase1State();
}

class _SignUpPhase1State extends State<SignUpPhase1> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                // DevicesHeight - AppBarHeight
                height: Util.setHeight(
                    mediaQuery: MediaQuery.of(context).size.height),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    LogoUtil.getLogo(),
                    Text(
                      'Create new account',
                      style: FontsUtil.getParagraphStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "What's your email",
                      textAlign: TextAlign.left,
                      style: FontsUtil.getParagraphStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Util.getLoginTextField(
                      controller: _emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomSizedBox(),
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
                    CustomSizedBox(),
                    Text(
                      "Enter your password again",
                      style: FontsUtil.getParagraphStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Util.getLoginTextField(
                      controller: _passwordConfirmationController,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Positioned(
                width: 180.0,
                height: 40.0,
                bottom: 0.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpPhase2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsUtil.btn,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: FontsUtil.getButtonStyle(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox CustomSizedBox() {
  return SizedBox(
    height: 15.0,
  );
}
