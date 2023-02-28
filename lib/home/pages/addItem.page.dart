import 'package:aural/utils/customButton.widget.dart';
import 'package:aural/utils/footer.widget.dart';
import 'package:aural/utils/headerText.widget.dart';
import 'package:aural/utils/inputField.widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 80, 50, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderText(headerTxt: 'Add Item'),
            const SizedBox(height: 40),
            InputField(
              controllerInput: con1,
              hintTxt: 'Title',
              icon: Icons.title,
            ),
            const SizedBox(height: 25),
            InputField(
              controllerInput: con2,
              hintTxt: 'Description',
              icon: Icons.description,
            ),
            const SizedBox(height: 100),
            const CustomButton(
              btnTxt: 'Submit',
            ),
            const SizedBox(height: 50),
            const Footer(),
            const SizedBox(height: 40),
            CustomButton(
              btnTxt: 'Go back',
              optionalProcess: contextPopped,
            )
          ],
        ),
      ),
    );
  }
}
