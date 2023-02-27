import 'package:aural/home/pages/addItem.page.dart';
import 'package:aural/widgets/customButton.widget.dart';
import 'package:aural/widgets/customPadding.widget.dart';
import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/headerText.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final usernameInput = TextEditingController();
  final emailInput = TextEditingController();

  void navigate() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AddItem()));
  }

  void logOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const HeaderText(headerTxt: 'Profile'),
        InputField(
          controllerInput: usernameInput,
          hintTxt: 'admin',
          icon: Icons.account_circle_sharp,
          readOnly: true,
        ),
        InputField(
          controllerInput: emailInput,
          hintTxt: 'admin@gmail.com',
          icon: Icons.email,
          readOnly: true,
        ),
        const CustomPadding(topP: 50),
        const CustomButton(btnTxt: 'Edit'),
        const CustomPadding(topP: 50),
        const Footer(),
        const CustomPadding(topP: 40),
        CustomButton(btnTxt: 'Add item', optionalProcess: navigate),
        const CustomPadding(topP: 15),
        CustomButton(btnTxt: 'Sign out', optionalProcess: logOut)
      ],
    );
  }
}
