// ignore_for_file: avoid_print

import 'package:aural/login/login.page.dart';
import 'package:aural/widgets/customPadding.widget.dart';
import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/footerText.widget.dart';
import 'package:aural/widgets/header.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:aural/widgets/customButton.widget.dart';
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

  void registerProcess() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailInput.text.trim(),
        password: passwordInput.text.trim(),
      );
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } else if (e.code == 'invalid-email') {
        print('Invalid email provided for that user.');
      } else if (e.code == 'email-already-in-use') {
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
                const CustomPadding(topP: 20),
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
                const CustomPadding(topP: 40),
                CustomButton(
                  optionalProcess: registerProcess,
                  btnTxt: 'Register',
                ),
                const CustomPadding(topP: 50),
                const Footer(),
                const CustomPadding(topP: 30),
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
