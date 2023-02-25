import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.controllerInput,
    required this.hintTxt,
    required this.icon,
    this.hidden = false,
  });

  final TextEditingController controllerInput;
  final String hintTxt;
  final IconData icon;
  final bool hidden;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SizedBox(
          height: 50,
          width: 300,
          child: TextFormField(
            style: TextStyle(color: globals.globalMaterialTextColor.shade300),
            controller: widget.controllerInput,
            obscureText: widget.hidden,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  widget.icon,
                  color: globals.globalMaterialDefaultColor,
                ),
                hintText: widget.hintTxt,
                hintStyle: TextStyle(
                  color: globals.globalMaterialTextColor.shade500,
                  letterSpacing: 0.35,
                  fontSize: 14,
                ),
                border: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: globals.globalMaterialDefaultColor)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: globals.globalMaterialDefaultColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: globals.globalMaterialDefaultColor.shade50,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
