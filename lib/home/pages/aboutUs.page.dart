import 'package:aural/utils/headerText.widget.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const HeaderText(headerTxt: 'About Us'),
              Card(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
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
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
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
        ],
      ),
    );
  }
}
