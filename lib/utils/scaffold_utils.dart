import 'package:flutter/material.dart';
import 'package:money_tracker/utils/app_bar_utils.dart';
import 'package:money_tracker/utils/color_utils.dart';

class ScaffoldUtil {
  static Scaffold getScaffold({required Widget body}) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      appBar: AppBarUtil.getAppBar(),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 5.0),
        child: body,
      ),
    );
  }
}
