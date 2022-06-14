import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sga/academylibrary/mainPage.dart';
import 'package:sga/cadetlife/categorylist.dart';
import 'package:sga/trainingmission/startpage.dart';

import 'login.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 80;

    return Container(
        color: Color(0xFF272837),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Welcome To',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 0.7
                            ..color = Colors.white)),
                  Text('SafeGame Academy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  circButton1(FontAwesomeIcons.info, context),
                  circButton3(FontAwesomeIcons.doorOpen, context)
                ],
              ),
              Wrap(
                runSpacing: 16,
                children: [
                  modeButton1(
                      'Academy Library',
                      "Let's learn together",
                      FontAwesomeIcons.bookReader,
                      Color(0xFF2F80ED),
                      width,
                      context),
                  modeButton2(
                      'Training Missions',
                      "Let's play games",
                      FontAwesomeIcons.gamepad,
                      Color(0xFFDF1D5A),
                      width,
                      context),
                  modeButton3('Cadet Life', 'List To Do', FontAwesomeIcons.list,
                      Color(0xFFFF8306), width, context)
                ],
              ),
            ],
          ),
        )));
  }

  GestureDetector circButton1(IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                    title: Text('About'),
                    content: Text(
                        'SafeGame Academy is an educational mobile app that is used to educate children about the harmfulness addiction in playing games.'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ]));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: RawMaterialButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                          title: Text('About'),
                          content: Text(
                              'SafeGame Academy is an educational mobile app that is used to educate children about the harmfulness addiction in playing games.'),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ]));
            },
            fillColor: Colors.white,
            shape: CircleBorder(),
            constraints: BoxConstraints(minHeight: 35, minWidth: 35),
            child: FaIcon(icon, size: 22, color: Color(0xFF2F3041))),
      ),
    );
  }

  GestureDetector circButton3(IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new LoginPage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: RawMaterialButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new LoginPage()));
            },
            fillColor: Colors.white,
            shape: CircleBorder(),
            constraints: BoxConstraints(minHeight: 35, minWidth: 35),
            child: FaIcon(icon, size: 22, color: Color(0xFF2F3041))),
      ),
    );
  }

  GestureDetector modeButton1(String title, String subtitle, IconData icon,
      Color color, double width, BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new MainPage()));
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(subtitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: 'Manrope',
                            color: Colors.white,
                            fontSize: 12,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: FaIcon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }

  GestureDetector modeButton2(String title, String subtitle, IconData icon,
      Color color, double width, BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                      title: Text('About'),
                      content: Text(
                          'Matching the color based on the color of the top box'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new StartPage())),
                        )
                      ]));
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(subtitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: 'Manrope',
                            color: Colors.white,
                            fontSize: 12,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: FaIcon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }

  GestureDetector modeButton3(String title, String subtitle, IconData icon,
      Color color, double width, BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new CategoryList()));
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(subtitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: 'Manrope',
                            color: Colors.white,
                            fontSize: 12,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: FaIcon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
