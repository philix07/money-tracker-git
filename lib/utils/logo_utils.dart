import 'package:flutter/material.dart';
import 'package:money_tracker/utils/color_utils.dart';

class LogoUtil {
  static CircleAvatar getLogo() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/logo4.png'),
      backgroundColor: ColorsUtil.background,
      radius: 75.0,
    );
  }
}
