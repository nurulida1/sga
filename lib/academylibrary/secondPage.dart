import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sga/mainScreen/menu.dart';
import 'thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
                          height: 300,
                          width: 300,
                          child: Lottie.asset('assets/images/boy.json'),
                        ),
                        Container(
                          height: 100,
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
                              "\n  Do you love playing games? Is it fun? \n  But did you know that games can bring\n  harm to you? Let's find out!",
                              style: TextStyle(fontSize: 16)),
                        ),
                        Column(children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 15)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ThirdPage()));
                            },
                            child: const Text('Continue'),
                          )
                        ])
                      ])))
        ]));
  }
}
