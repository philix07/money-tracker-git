import 'package:flutter/material.dart';
import 'package:money_tracker/services/auth.dart';
import 'package:money_tracker/screens/homepage_screens/page0.dart';
import 'package:money_tracker/screens/homepage_screens/page1.dart';
import 'package:money_tracker/screens/homepage_screens/page2.dart';
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
  int _indexController = 0;

  final List<StatefulWidget> pages = [
    Page0(),
    Page1(),
    Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background,
      appBar: AppBarUtil.getAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsUtil.background,
        onTap: (value) {
          setState(() {
            _indexController = value;
          });
        },
        currentIndex: _indexController,
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
      body: SingleChildScrollView(
        child: pages[_indexController],
      ),
    );
  }
}
