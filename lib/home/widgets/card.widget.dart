import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: SizedBox(
        height: 75,
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              leading: Image.asset('assets/logo/logo_l.png'),
              title: const Text('Demo Items Title'),
              subtitle: const Text('Demo Items Description'),
            ),
          ],
        ),
      ),
    );
  }
}
