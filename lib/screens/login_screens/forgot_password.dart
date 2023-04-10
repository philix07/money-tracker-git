import 'package:flutter/material.dart';
import 'package:money_tracker/screens/login_screens/login_page.dart';
import 'package:money_tracker/utils/font_utils.dart';
import 'package:money_tracker/utils/logo_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: Util.setHeight(
                    mediaQuery: MediaQuery.of(context).size.height),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    LogoUtil.getLogo(),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Forgot Password',
                      style: FontsUtil.getParagraphStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      'Enter your Email',
                      style: FontsUtil.getParagraphStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Util.getLoginTextField(
                      controller: _emailController,
                      textInputType: TextInputType.emailAddress,
                    )
                  ],
                ),
              ),
              Util.getPositionedButton(
                text: 'Send Link',
                function: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: dialogContent(context),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dialogContent(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Reset Password'),
      SizedBox(height: 16),
      Text('Check your email for the link'),
    ],
  );
}
