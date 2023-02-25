import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Forgot password',
        style: TextStyle(
          fontSize: 12,
          color: globals.globalMaterialTextColor.shade400,
        ),
      ),
    );
  }
}
