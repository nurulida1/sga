import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sga/cadetlife/constants.dart';
import 'package:lottie/lottie.dart';
import 'package:sga/mainScreen/menu.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

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
      SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1),
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                            child: Lottie.asset('assets/icons/home.json'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new Menu()));
                            })),
                  ),
                  Text("Hello There!",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontWeight: FontWeight.w900)),
                  Text("\t\tLet's change to Healthy LifeStyle",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.w300)),
                  SizedBox(height: 20),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: kShadowColor)
                                  ]),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      //onTap
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(children: <Widget>[
                                            Spacer(),
                                            Lottie.asset(
                                                'assets/images/exercise.json'),
                                            Spacer(),
                                            Text("Exercise",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(fontSize: 15))
                                          ])))))),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: kShadowColor)
                                  ]),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      //onTap
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(children: <Widget>[
                                            Spacer(),
                                            Lottie.asset(
                                                'assets/images/eathealthy.json'),
                                            Spacer(),
                                            Text("Eat Healthy",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(fontSize: 15))
                                          ])))))),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: kShadowColor)
                                  ]),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      //onTap
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(children: <Widget>[
                                            Spacer(),
                                            Lottie.asset(
                                                'assets/images/reading.json'),
                                            Spacer(),
                                            Text("Reading",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(fontSize: 15))
                                          ])))))),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: kShadowColor)
                                  ]),
                              child: Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                    title: Text(
                                                        'Suggestions Activities'),
                                                    content: Text(
                                                        '\n •Watching Movies \n •Doing house chores together \n •Going for picnic \n •Playing family games'),
                                                    actions: [
                                                      TextButton(
                                                        child: Text('OK'),
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context),
                                                      )
                                                    ]));
                                      },
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(children: <Widget>[
                                            Spacer(),
                                            Lottie.asset(
                                                'assets/images/family.json'),
                                            Spacer(),
                                            Text("Family Time",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(fontSize: 15))
                                          ])))))),
                    ],
                  ))
                ],
              )))
    ]));
  }
}
