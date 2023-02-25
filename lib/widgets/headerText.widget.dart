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
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/logo/logo_l.png'),
              width: 100,
              height: 100,
            ),
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
      ),
    );
  }
}
