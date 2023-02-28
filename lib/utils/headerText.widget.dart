import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class HeaderText extends StatefulWidget {
  const HeaderText({
    super.key,
    required this.headerTxt,
  });

  final String headerTxt;

  @override
  State<HeaderText> createState() => _HeaderTextState();
}

class _HeaderTextState extends State<HeaderText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.headerTxt,
            style: const TextStyle(
              fontSize: 24,
              color: globals.globalMaterialTextColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
