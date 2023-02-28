// ignore_for_file: avoid_print

import 'package:aural/register/register.page.dart';
import 'package:aural/utils/footer.widget.dart';
import 'package:aural/utils/footerText.widget.dart';
import 'package:aural/utils/header.widget.dart';
import 'package:aural/utils/inputField.widget.dart';
import 'package:aural/utils/customButton.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

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
      switch (e.code) {
        case 'invalid-email':
          incorrectInput(e.code);
          break;
        case 'user-not-found':
          incorrectInput(e.code);
          break;
        case 'wrong-password':
          incorrectInput(e.code);
          break;
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
                titleTextStyle: const TextStyle(
                  fontSize: 16,
                ),
                backgroundColor: globals.globalBottomNavigationColor,
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
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(headerTxt: 'Sign in to continue'),
                const SizedBox(height: 40),
                InputField(
                  controllerInput: emailInput,
                  hintTxt: 'Enter your email',
                  icon: Icons.mail,
                ),
                const SizedBox(height: 25),
                InputField(
                  controllerInput: passwordInput,
                  hintTxt: 'Enter your password',
                  icon: Icons.lock,
                  hidden: true,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  optionalProcess: loginProcess,
                  btnTxt: 'Login',
                ),
                // const SizedBox(height: 5),
                // const LoginWidget(),
                const SizedBox(height: 40),
                const Footer(),
                const SizedBox(height: 20),
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
