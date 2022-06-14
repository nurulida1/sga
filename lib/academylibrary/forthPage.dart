import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sga/mainScreen/menu.dart';

import 'fifthPage.dart';
import 'thirdpage.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFF5CEB8),
            leading: IconButton(
                icon: Icon(Icons.home, color: Colors.black, size: 40),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Menu()));
                })),
        body: Stack(children: <Widget>[
          Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: Color(0xFFF5CEB8),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/background.png"),
                  ))),
          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 350,
                          width: 350,
                          child: Image.asset('assets/images/sleep.png'),
                        ),
                        Container(
                          height: 90,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xFFF2BEA1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                ),
                              ]),
                          child: Text(
                              "\n\n                      Poor sleep hygiene",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                        Column(children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 15)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FifthPage()));
                            },
                            child: const Text('Continue'),
                          )
                        ])
                      ])))
        ]));
  }
}
