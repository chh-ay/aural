import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/goBackButton.widget.dart';
import 'package:aural/widgets/headerText.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:aural/widgets/submitButton.widget.dart';
import 'package:flutter/material.dart';

class AddItemPage extends StatefulWidget {
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final con1 = TextEditingController();
  final con2 = TextEditingController();
  final con3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HeaderText(headerTxt: 'List Item'),
        InputField(
          controllerInput: con1,
          hintTxt: 'Title',
          icon: Icons.title,
        ),
        InputField(
          controllerInput: con2,
          hintTxt: 'Description',
          icon: Icons.description,
        ),
        const Padding(padding: EdgeInsets.only(top: 100)),
        SubmitButton(loginProcess: () {}),
        const Padding(padding: EdgeInsets.only(top: 50)),
        const Footer(),
        const Padding(padding: EdgeInsets.only(top: 50)),
        GoBackButton(loginProcess: () {
          Navigator.pop(context);
        })
      ],
    ));
  }
}
