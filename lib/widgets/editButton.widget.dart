import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class EditButton extends StatefulWidget {
  const EditButton({
    super.key,
    required this.loginProcess,
  });

  final Function() loginProcess;

  @override
  State<EditButton> createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
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
            'Edit',
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
