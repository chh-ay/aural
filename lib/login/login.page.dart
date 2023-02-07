import 'widget/login.widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueGrey,
                Colors.lightBlueAccent,
              ]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: const <Widget>[
                Login(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
