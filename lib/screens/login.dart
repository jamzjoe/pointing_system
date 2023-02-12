import 'package:flutter/material.dart';
import 'package:pointing_system/constant/constant.dart';
import 'package:pointing_system/widgets/my_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: defaultPadding,
          child: Column(
            children: const [
              MyText(
                  type: 'heading',
                  text:
                      'Welcome to our platform! Please sign up or log in to access all of our features and content.')
            ],
          ),
        ),
      ),
    );
  }
}
