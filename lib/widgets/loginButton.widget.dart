import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class LoginButton extends StatefulWidget {
  const LoginButton(
      {super.key, required this.loginProcess, required this.btnTxt});

  final Function() loginProcess;
  final String btnTxt;
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 42,
        width: 140,
        decoration: BoxDecoration(
          color: globals.globalMaterialDefaultColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: widget.loginProcess,
          child: Text(
            widget.btnTxt,
            style: const TextStyle(
              color: globals.globalBackgroundColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
