import 'package:flutter/material.dart';
import 'package:money_tracker/utils/color_utils.dart';

class AppBarUtil {
  static AppBar getAppBar() {
    return AppBar(
      backgroundColor: ColorsUtil.background,
      toolbarHeight: 50.0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        'Money Tracker',
        style: TextStyle(color: ColorsUtil.paragraph),
      ),
      elevation: 35.0,
    );
  }
}
