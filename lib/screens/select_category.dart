import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({
    Key? key,
  }) : super(key: key);

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
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
                width: MediaQuery.of(context).size.width,
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
              const Positioned(
                top: 110,
                left: 40,
                child: Text(
                  "Gastro",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                top: 140,
                left: 33,
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/namecard.png"))),
                ),
              ),
              const Positioned(
                top: 230,
                right: 45,
                child: Text(
                  "SPONSERED",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                top: 270,
                left: 40,
                child: Container(
                  height: 340,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              Positioned(
                top: 620,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
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
