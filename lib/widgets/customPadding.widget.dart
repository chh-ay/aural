import 'package:flutter/material.dart';

class CustomPadding extends StatefulWidget {
  const CustomPadding({
    super.key,
    this.topP = 0,
    this.bottomP = 0,
    this.leftP = 0,
    this.rightP = 0,
  });

  final double topP;
  final double bottomP;
  final double leftP;
  final double rightP;

  @override
  State<CustomPadding> createState() => _CustomPaddingState();
}

class _CustomPaddingState extends State<CustomPadding> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.topP,
        bottom: widget.bottomP,
        left: widget.leftP,
        right: widget.rightP,
      ),
    );
  }
}
