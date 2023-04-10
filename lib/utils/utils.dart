import 'package:flutter/material.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/font_utils.dart';

class Util {
  static double setHeight({required double mediaQuery}) {
    return mediaQuery - 108.0;
  }

  static SizedBox getLoginTextField(
      {required TextEditingController controller,
      required TextInputType textInputType,
      bool obscureText = false}) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff777777),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }

  static SizedBox getInputTextField(
      {required TextEditingController controller,
      required TextInputType textInputType,
      required String text}) {
    return SizedBox(
      height: 40,
      width: 260,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          label: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          filled: true,
          fillColor: Color(0xff777777),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
      ),
    );
  }

  static Positioned getPositionedButton(
      {required String text, required function()}) {
    return Positioned(
      width: 180.0,
      height: 40.0,
      bottom: 35,
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          text,
          style: FontsUtil.getButtonStyle(fontSize: 16.0),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsUtil.btn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  static Container getNormalButton(
      {required String text, required function()}) {
    return Container(
      width: 180.0,
      height: 40.0,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsUtil.btn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          text,
          style: FontsUtil.getButtonStyle(),
        ),
      ),
    );
  }
}
