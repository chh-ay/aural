import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.optionalProcess,
    required this.btnTxt,
  });

  final Function()? optionalProcess;
  final String btnTxt;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
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
          onPressed: widget.optionalProcess,
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
