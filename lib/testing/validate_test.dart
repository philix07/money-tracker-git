import 'package:flutter/material.dart';
import 'package:money_tracker/utils/scaffold_utils.dart';

class TextFormFieldValidation extends StatefulWidget {
  const TextFormFieldValidation({super.key});

  @override
  State<TextFormFieldValidation> createState() =>
      TextFormField_ValidationState();
}

class TextFormField_ValidationState extends State<TextFormFieldValidation> {
  final _formState = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formState,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    return value == null ? "Enter your email" : null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Validate'),
                onPressed: () {
                  if (_formState.currentState!.validate()) {
                    print('login succeed');
                  } else {
                    print('Something went wrong');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
