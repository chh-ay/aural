// ignore_for_file: avoid_print

import 'package:aural/register/register.page.dart';
import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/footerText.widget.dart';
import 'package:aural/widgets/header.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:aural/widgets/loginButton.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();

  void loginProcess() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailInput.text.trim(),
        password: passwordInput.text.trim(),
      );
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        incorrectInput(e.code);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        incorrectInput(e.code);
      } else if (e.code == 'invalid-email') {
        print('Invalid email provided for that user.');
        incorrectInput(e.code);
      }
      print(e.code);
    } catch (e) {
      print(e);
    }
  }

  incorrectInput(errCode) => {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(errCode),
              );
            })
      };

  navigate() => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()))
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
                const Header(headerTxt: 'Sign in to continue'),
                const Padding(padding: EdgeInsets.only(top: 20)),
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
                LoginButton(loginProcess: loginProcess),
                const Padding(padding: EdgeInsets.only(top: 5)),
                // const LoginWidget(),
                const Padding(padding: EdgeInsets.only(top: 50)),
                const Footer(),
                const Padding(padding: EdgeInsets.only(top: 30)),
                FooterTxt(
                  mainTxt: "Don't have an account?",
                  btnTxt: 'Register now!',
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
