import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sga/mainScreen/menu.dart';
import 'endPage.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 600,
                      child: Image.asset('assets/images/depression.gif'),
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
                          "\n\n      \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t   Depression",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Column(children: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EndPage()));
                        },
                        child: const Text('Continue'),
                      )
                    ])
                  ]))
        ]));
  }
}
