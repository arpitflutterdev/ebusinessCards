import 'package:ebusinesscards/utils/colors.dart';
import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';


class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 100,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: rectangleDecoration(Images().rectUpper),
                child: Row(
                  children: [
                    Container(),
                    const SizedBox(
                      width: 300,
                    ),
                    navbarContents(Images().group, 40, 40),
                  ],
                ),
              ),
                  Positioned(
                    top: 120,
                    left: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "My Cards", style: TextStyle(fontSize: 36),
                        ),
                        SizedBox(width:100,),
                        Container(
                          height: 50,
                            width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/plus.png"))
                          ),
                        ),
                      ],
                    ),
                  ),
              Positioned(
                top: 110,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 17,
                child: cardView("assets/hannah.png"),
              ),
              Positioned(
                top: 290,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 17,
                child: cardView("assets/wattslin.png"),
              ),

              Positioned(
                top: 620,
                child: Container(
                  height: 100,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: rectangleDecoration(Images().navbar),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      navbarContents(Images().cat, 50, 50),
                      navbarContents(Images().addnew, 50, 50),
                      navbarContents(Images().mycards, 50, 50),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
