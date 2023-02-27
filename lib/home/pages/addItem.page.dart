import 'package:aural/widgets/customButton.widget.dart';
import 'package:aural/widgets/customPadding.widget.dart';
import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/headerText.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final con1 = TextEditingController();
  final con2 = TextEditingController();
  final con3 = TextEditingController();

  void contextPopped() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HeaderText(headerTxt: 'Add Item'),
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
        const CustomPadding(topP: 100),
        const CustomButton(
          btnTxt: 'Submit',
        ),
        const CustomPadding(topP: 50),
        const Footer(),
        const CustomPadding(topP: 40),
        CustomButton(
          btnTxt: 'Go back',
          optionalProcess: contextPopped,
        )
      ],
    ));
  }
}
