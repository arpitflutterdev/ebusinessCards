import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';


class ListTemplates extends StatefulWidget {
  const ListTemplates({Key? key}) : super(key: key);

  @override
  _ListTemplatesState createState() => _ListTemplatesState();
}

class _ListTemplatesState extends State<ListTemplates> {
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
                top: 110,
                left: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Card templates", style: TextStyle(fontSize: 36),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 190.0),
                      child: Row(
                        children: [
                          Icon(Icons.filter_alt),
                          Text("Filter"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
                 Padding(
                   padding: const EdgeInsets.only(top: 170.0),
                   child: Container(
                      height: 530,
                      width: 400,
                      child: myWidget(context)),
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

  Widget myWidget(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
        shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0
          ),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                decoration: BoxDecoration(
            image: DecorationImage(
             image: AssetImage("assets/wattslin.png")
            )
            ),
            ));
          }
      ),
    );
  }
}

