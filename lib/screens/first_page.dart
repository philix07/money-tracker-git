import 'package:flutter/material.dart';
import 'package:money_tracker/screens/login_screens/login_page.dart';
import 'package:money_tracker/utils/color_utils.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      appBar: AppBar(
        title: Text('Money Tracker'),
        titleTextStyle: TextStyle(
          color: ColorsUtil.headline,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: ColorsUtil.background,
        elevation: 5.0,
      ),
      body: ListView(
        padding: EdgeInsets.all(18.0),
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Monthly Living Expenses Management',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: ColorsUtil.paragraph,
                ),
              ),
              SizedBox(height: 20.0),
              _NewSection(_controller1, 'Makanan', 'Persentase untuk makanan'),
              SizedBox(height: 20.0),
              _NewSection(_controller2, 'Jajan', 'Persentase untuk jajan'),
              SizedBox(height: 20.0),
              _NewSection(
                  _controller3, 'Keinginan', 'Persentase untuk keinginan'),
              SizedBox(height: 20.0),
              _NewSection(
                  _controller4, 'Tabungan', 'Persentase untuk tabungan'),
              SizedBox(height: 15.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsUtil.btn,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: ColorsUtil.btnText,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextField _NewSection(controller, labelText, hintText) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: TextStyle(
        color: ColorsUtil.paragraph,
      ),
      hintStyle: TextStyle(
        color: ColorsUtil.paragraph,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
