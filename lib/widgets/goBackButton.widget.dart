import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class GoBackButton extends StatefulWidget {
  const GoBackButton({
    super.key,
    required this.loginProcess,
  });

  final Function() loginProcess;

  @override
  State<GoBackButton> createState() => _GoBackButtonState();
}

class _GoBackButtonState extends State<GoBackButton> {
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
          child: const Text(
            'Go Back',
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
