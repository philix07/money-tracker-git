import 'package:flutter/material.dart';
import 'package:money_tracker/screens/auth/auth_page.dart';
import 'package:money_tracker/services/auth.dart';
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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              LogoUtil.getLogo(),
              Text(
                'Create new account',
                style: FontsUtil.getParagraphStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomSizedBox(60.0),
              Text(
                'Enter your email',
                style: FontsUtil.getParagraphStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomSizedBox(8.0),
              CustomTextFormField(
                textFormField: TextFormField(
                  controller: _emailController,
                  decoration: Util.getInputDecoration(),
                  validator: ((value) {
                    return value!.isEmpty ? 'Email cannot null' : null;
                  }),
                ),
              ),
              CustomSizedBox(15.0),
              Text(
                'Enter your password',
                style: FontsUtil.getParagraphStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomSizedBox(8.0),
              CustomTextFormField(
                textFormField: TextFormField(
                  controller: _passwordController,
                  decoration: Util.getInputDecoration(),
                  obscureText: true,
                  validator: ((value) {
                    return value!.isEmpty ? 'Password cannot null' : null;
                  }),
                ),
              ),
              CustomSizedBox(25.0),
              Util.getNormalButton(
                text: 'Register',
                function: (() {
                  if (_formKey.currentState!.validate()) {
                    // Do action if it's Valid

                    // Registering New User To The Firebase
                    AuthService.registerUser(
                      emailController: _emailController.text,
                      passwordController: _passwordController.text,
                    );

                    // Move to the SignIn page to ease user login
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AuthPage()),
                    );

                    // Show Confirmation Message that the
                    // account is SUCCESSFULLY created
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: dialogContent(context),
                        );
                      },
                    );

                    print('Valid');
                  } else {
                    // If it's Invalid
                    print('Invalid');
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox CustomSizedBox(double height, {double width = 0}) {
  return SizedBox(height: height);
}

SizedBox CustomTextFormField({required TextFormField textFormField}) {
  return SizedBox(height: 50, width: 300, child: textFormField);
}

Widget dialogContent(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Confirmation'),
      SizedBox(height: 16),
      Text('Your Account Has Successfully Created'),
    ],
  );
}
