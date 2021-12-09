import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  _ItemCategoryState createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
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
                top: 100,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 7,
                child: Text("Hannah Morales", style: TextStyle(
                    fontSize: 36, fontWeight: FontWeight.w300
                ),),
              ),
              Positioned(
                top: 90,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 17,
                child: cardView("assets/hannah.png"),
              ),
              Positioned(
                top: 270,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 17,
                child: cardView("assets/letstalk.png"),
              ),
              Positioned(
                top: 520,
                right: MediaQuery
                    .of(context)
                    .size
                    .width / 2.8,
                child: const Text("Contact", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                ),),
              ),
              Positioned(
                top: 575,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      contactWidgets("assets/cemail.png"),
                      contactWidgets("assets/cphone.png"),
                      contactWidgets("assets/cchat.png"),
                    ],
                  ),
                ),
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
    );
  }
}


