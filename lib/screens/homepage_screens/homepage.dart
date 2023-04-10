import 'package:flutter/material.dart';
import 'package:money_tracker/screens/auth/auth_service.dart';
import 'package:money_tracker/utils/app_bar_utils.dart';
import 'package:money_tracker/utils/color_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexController = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      appBar: AppBarUtil.getAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blueGrey[900],
        backgroundColor: ColorsUtil.background,
        onTap: (value) {
          setState(() {
            _indexController = value;
          });
        },
        currentIndex: _indexController,
        selectedLabelStyle:
            TextStyle(color: Colors.white, decorationColor: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined, color: Colors.white),
            label: "Pocket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined, color: Colors.white),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.candlestick_chart_outlined, color: Colors.white),
            label: "Usage",
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 5.0),
        child: Util.getNormalButton(
            function: (() => AuthService.signOutUser()), text: "Log Out",),
      ),
    );
  }
}
