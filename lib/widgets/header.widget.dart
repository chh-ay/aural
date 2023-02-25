import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class Header extends StatefulWidget {
  const Header({super.key, required this.headerTxt});

  final String headerTxt;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Image(
          image: AssetImage('assets/logo/logo_l.png'),
          height: globals.headerLogoHeight,
          width: globals.headerLogoWidth,
        ),
        Row(
          children: const <Widget>[
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: globals.headerFontSize,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              ' Aural',
              style: TextStyle(
                fontSize: globals.headerFontSize,
                fontWeight: FontWeight.w700,
                color: globals.globalMaterialDefaultColor,
              ),
            )
          ],
        ),
        Text(
          widget.headerTxt,
        )
      ],
    );
  }
}
