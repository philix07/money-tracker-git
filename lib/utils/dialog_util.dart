import 'package:flutter/material.dart';

class DialogUtil {

  String _message = '';

  void showMessages(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: dialogContent(context),
        );
      },
    );
  }

  Widget dialogContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Confirmation'),
        SizedBox(height: 16),
        Text('Your Account Has Successfully Created'),
      ],
    );
  }
}
