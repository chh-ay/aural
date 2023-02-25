import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class AddItemButton extends StatefulWidget {
  const AddItemButton({
    super.key,
    required this.loginProcess,
  });

  final Function() loginProcess;

  @override
  State<AddItemButton> createState() => _AddItemButtonState();
}

class _AddItemButtonState extends State<AddItemButton> {
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
            'Add Item',
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
