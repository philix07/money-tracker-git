import 'package:flutter/material.dart';
import 'package:money_tracker/screens/login_screens/sign_up_phase2.dart';
import 'package:money_tracker/screens/login_screens/sign_in.dart';
import 'package:money_tracker/screens/login_screens/sign_up_phase1.dart';
import 'package:money_tracker/utils/font_utils.dart';
import 'package:money_tracker/utils/logo_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoUtil.getLogo(),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Welcome to Money Tracker',
                textAlign: TextAlign.center,
                style: FontsUtil.getParagraphStyle(fontSize: 24),
              ),
              Text(
                'Manage Money Easily',
                textAlign: TextAlign.center,
                style: FontsUtil.getParagraphStyle(fontSize: 24),
              ),
              SizedBox(
                height: 75.0,
              ),
              Text(
                'Sudah Memiliki Akun?',
                style: FontsUtil.getParagraphStyle(fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Util.getNormalButton(
                text: 'Sign In',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
              SizedBox(
                height: 75.0,
              ),
              Text(
                'Belum Memiliki Akun?',
                style: FontsUtil.getParagraphStyle(fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Util.getNormalButton(
                text: 'Sign Up',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPhase1(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
