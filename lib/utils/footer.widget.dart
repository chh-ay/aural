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
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Divider(
              thickness: 1,
              color: globals.globalMaterialDefaultColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Image(
            image: AssetImage('assets/logo/logo_l.png'),
            width: 16,
            height: 16,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Divider(
              thickness: 1,
              color: globals.globalMaterialDefaultColor,
            ),
          ),
        ),
      ],
    );
  }
}
