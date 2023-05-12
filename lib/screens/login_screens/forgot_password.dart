import 'package:flutter/material.dart';
import 'package:money_tracker/screens/auth/auth_page.dart';
import 'package:money_tracker/services/auth.dart';
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 10.0),
                    LogoUtil.getLogo(),
                    SizedBox(height: 5.0),
                    Text(
                      'Forgot Password',
                      style: FontsUtil.getParagraphStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'Enter your Email',
                      style: FontsUtil.getParagraphStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          controller: _emailController,
                          decoration: Util.getInputDecoration(),
                          validator: ((value) {
                            if (value == '' || value!.isEmpty)
                              return 'Email cannot null';
                            return null;
                          }),
                        )),
                    SizedBox(height: 25.0),
                    Util.getNormalButton(
                      text: 'Send Link',
                      function: () {
                        if (_formKey.currentState!.validate()) {
                          AuthService.forgotPassword(_emailController.text);

                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: ((context) => AuthPage())),
                          );
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: dialogContent(context),
                              );
                            },
                          );
                        }
                      },
                    ),
                    SizedBox(height: 25.0),
                  ],
                ),
              ],
            ),
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
