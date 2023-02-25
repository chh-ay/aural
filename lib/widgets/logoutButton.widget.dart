import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class LogoutButton extends StatefulWidget {
  const LogoutButton({
    super.key,
    required this.logoutProcess,
  });

  final Function() logoutProcess;

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
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
          onPressed: widget.logoutProcess,
          child: const Text(
            'Logout',
            style: TextStyle(
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
