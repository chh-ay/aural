import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class FooterTxt extends StatefulWidget {
  const FooterTxt({
    super.key,
    required this.mainTxt,
    required this.btnTxt,
    required this.onClick,
  });

  final String mainTxt;
  final String btnTxt;
  final Function() onClick;

  @override
  State<FooterTxt> createState() => _FooterTxtState();
}

class _FooterTxtState extends State<FooterTxt> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.mainTxt,
          style: TextStyle(
            color: globals.globalMaterialTextColor.shade400,
            fontSize: 12,
            fontWeight: FontWeight.w100,
          ),
        ),
        TextButton(
          onPressed: widget.onClick,
          child: Text(widget.btnTxt,
              style: TextStyle(
                color: globals.globalMaterialTextColor.shade100,
                fontSize: 12,
                fontWeight: FontWeight.w100,
              )),
        )
      ],
    );
  }
}
