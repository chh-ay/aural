import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class SubmitButton extends StatefulWidget {
  const SubmitButton({
    super.key,
    required this.loginProcess,
  });

  final Function() loginProcess;

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
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
            'Submits',
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
