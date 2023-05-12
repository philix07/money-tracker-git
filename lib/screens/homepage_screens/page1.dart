import 'package:flutter/material.dart';
import 'package:money_tracker/services/auth.dart';
import 'package:money_tracker/utils/font_utils.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';
import 'package:money_tracker/utils/utils.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile-picture.jpg"),
              radius: 75.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Name",
            style: FontsUtil.getParagraphStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(
            "Bellatrix",
            style: TextStyle(color: Colors.amber[300], fontSize: 20.0),
          ),
          SizedBox(height: 10.0),
          Text(
            "Current Occupation",
            style: FontsUtil.getParagraphStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(
            "University Student",
            style: TextStyle(color: Colors.amber[300], fontSize: 20.0),
          ),
          SizedBox(height: 40.0),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.0),
            child: Util.getNormalButton(
              function: (() {}),
              text: "Edit Money Data",
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.0),
            child: Util.getNormalButton(
              function: (() {}),
              text: "Edit Profile",
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.0),
            child: Util.getNormalButton(
              function: () => AuthService.signOutUser(),
              text: "Log Out",
            ),
          ),
        ],
      ),
    );
  }
}
