import 'package:aural/widgets/headerText.widget.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          const HeaderText(headerTxt: 'About Us'),
          Card(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/personals/chhay.jpg'),
              )),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Vinchhay Sea',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/personals/monyreadh.jpg'))),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Pichmonyreadh Chau',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/personals/sivtheng.jpg'),
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Sivtheng Chang',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    ]);
  }
}
