import 'package:aural/home/widgets/addItemPage.widget.dart';
import 'package:aural/widgets/addItemButton.widget.dart';
import 'package:aural/widgets/editButton.widget.dart';
import 'package:aural/widgets/footer.widget.dart';
import 'package:aural/widgets/headerText.widget.dart';
import 'package:aural/widgets/inputField.widget.dart';
import 'package:aural/widgets/logoutButton.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final usernameInput = TextEditingController();
  final emailInput = TextEditingController();

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
        const Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        EditButton(
          loginProcess: () {},
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        const Footer(),
        const Padding(
          padding: EdgeInsets.only(top: 35),
        ),
        AddItemButton(
          loginProcess: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddItemPage()));
          },
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        LogoutButton(logoutProcess: () {
          FirebaseAuth.instance.signOut();
        })
      ],
    );
  }
}
