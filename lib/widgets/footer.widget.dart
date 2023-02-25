import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          width: 110,
          child: Divider(
            thickness: 1.25,
            color: globals.globalMaterialDefaultColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11, right: 11),
          child: Image(
            image: AssetImage('assets/logo/logo_l.png'),
            width: 16,
            height: 16,
          ),
        ),
        SizedBox(
          width: 110,
          child: Divider(
            thickness: 1.25,
            color: globals.globalMaterialDefaultColor,
          ),
        ),
      ],
    );
  }
}
