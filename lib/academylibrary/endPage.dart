import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sga/academylibrary/mainPage.dart';
import 'package:sga/mainScreen/menu.dart';

class EndPage extends StatelessWidget {
  const EndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          height: size.height * .45,
          decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/background.png"),
              ))),
      Center(
        child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Color(0xFFF2BEA1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 110,
                  child: Column(
                    children: [
                      GestureDetector(
                          child: Image.asset('assets/icons/replay.png',
                              width: 70, height: 70),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new MainPage()));
                          }),
                      SizedBox(height: 22),
                      Text('Replay',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      GestureDetector(
                          child: Lottie.asset('assets/icons/home.json',
                              width: 140, height: 140),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Menu()));
                          }),
                      Text('Home',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ]));
  }
}
