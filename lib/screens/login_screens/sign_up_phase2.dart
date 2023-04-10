import 'package:flutter/material.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/logo_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class SignUpPhase2 extends StatefulWidget {
  const SignUpPhase2({super.key});

  @override
  State<SignUpPhase2> createState() => _SignUpPhase2State();
}

class _SignUpPhase2State extends State<SignUpPhase2> {
  final _nameController = TextEditingController();
  final _monthlySalaryController = TextEditingController();
  final _eatingPercentageController = TextEditingController();
  final _snacksPercentageController = TextEditingController();
  final _passionPercentageController = TextEditingController();
  final _savingPercentageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil.getScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LogoUtil.getLogo(),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _nameController,
              textInputType: TextInputType.name,
              text: "Name",
            ),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _monthlySalaryController,
              textInputType: TextInputType.number,
              text: "Monthly Salary",
            ),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _eatingPercentageController,
              textInputType: TextInputType.number,
              text: "Eating Percentage",
            ),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _snacksPercentageController,
              textInputType: TextInputType.number,
              text: "Snacks Percentage",
            ),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _passionPercentageController,
              textInputType: TextInputType.number,
              text: "Passion Percentage",
            ),
            CustomSizedBox(),
            Util.getInputTextField(
              controller: _savingPercentageController,
              textInputType: TextInputType.number,
              text: "Saving Percentage",
            ),
            SizedBox(height: 20.0),
            Util.getNormalButton(
              function: () {},
              text: "Register",
            )
          ],
        ),
      ),
    );
  }
}

SizedBox CustomSizedBox() {
  return SizedBox(
    height: 12.0,
  );
}
