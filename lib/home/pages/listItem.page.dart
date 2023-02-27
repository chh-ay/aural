import 'package:aural/home/widgets/card.widget.dart';
import 'package:aural/widgets/headerText.widget.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        HeaderText(
          headerTxt: 'Items List',
        ),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
      ],
    );
  }
}
