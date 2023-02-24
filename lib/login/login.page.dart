import 'package:aural/widget/header.widget.dart';
import 'package:aural/widget/inputField.widget.dart';
import 'package:aural/widget/loginButton.widget.dart';
import 'package:aural/globals.dart' as globals;
import 'widget/login.widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Header(headerTxt: 'Sign in to continue'),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                InputField(
                  controllerInput: emailInput,
                  hintTxt: 'Enter your email',
                  icon: Icons.account_circle_rounded,
                ),
                InputField(
                  controllerInput: passwordInput,
                  hintTxt: 'Enter your password',
                  icon: Icons.lock,
                  hidden: true,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
                const LoginButton(),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Center(
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      fontSize: 12,
                      color: globals.globalMaterialTextColor.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
