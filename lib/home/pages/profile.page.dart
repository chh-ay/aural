import 'package:aural/home/pages/addItem.page.dart';
import 'package:aural/utils/customButton.widget.dart';
import 'package:aural/utils/footer.widget.dart';
import 'package:aural/utils/headerText.widget.dart';
import 'package:aural/utils/inputField.widget.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeaderText(headerTxt: 'Profile'),
            const SizedBox(height: 40),
            InputField(
              controllerInput: usernameInput,
              hintTxt: 'admin',
              icon: Icons.account_circle_sharp,
              readOnly: true,
            ),
            const SizedBox(height: 25),
            InputField(
              controllerInput: emailInput,
              hintTxt: 'admin@gmail.com',
              icon: Icons.email,
              readOnly: true,
            ),
            const SizedBox(height: 50),
            const CustomButton(btnTxt: 'Edit'),
            const SizedBox(height: 40),
            const Footer(),
            const SizedBox(height: 40),
            CustomButton(btnTxt: 'Add item', optionalProcess: navigate),
            const SizedBox(height: 15),
            CustomButton(btnTxt: 'Sign out', optionalProcess: logOut)
          ],
        ),
      ),
    );
  }
}
