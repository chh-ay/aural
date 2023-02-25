import 'dart:developer';

import 'package:aural/login/login.page.dart';
import 'package:aural/widget/footer.widget.dart';
import 'package:aural/widget/footerText.widget.dart';
import 'package:aural/widget/header.widget.dart';
import 'package:aural/widget/inputField.widget.dart';
import 'package:aural/widget/loginButton.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameInput = TextEditingController();
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();

  Future<void> registerWithGoogle() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailInput.text.trim(),
        password: passwordInput.text.trim(),
      );
      log('$credential');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('$e');
    }
  }

  navigate() => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LoginPage()))
      };

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
                const Header(headerTxt: 'Register to continue'),
                const Padding(padding: EdgeInsets.only(top: 20)),
                InputField(
                  controllerInput: usernameInput,
                  hintTxt: 'Enter your username',
                  icon: Icons.account_circle_rounded,
                ),
                InputField(
                  controllerInput: emailInput,
                  hintTxt: 'Enter your email',
                  icon: Icons.mail,
                ),
                InputField(
                  controllerInput: passwordInput,
                  hintTxt: 'Enter your password',
                  icon: Icons.lock,
                  hidden: true,
                ),
                const Padding(padding: EdgeInsets.only(top: 40)),
                LoginButton(loginProcess: registerWithGoogle),
                const Padding(padding: EdgeInsets.only(top: 50)),
                const Footer(),
                const Padding(padding: EdgeInsets.only(top: 30)),
                FooterTxt(
                  mainTxt: 'Already have an account?',
                  btnTxt: 'Login now!',
                  onClick: navigate,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
