import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListTemplates extends StatefulWidget {
  const ListTemplates({Key? key}) : super(key: key);

  @override
  _ListTemplatesState createState() => _ListTemplatesState();
}

class _ListTemplatesState extends State<ListTemplates> {
  final _formKey = GlobalKey<FormState>();

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
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  content: Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      Positioned(
                                        right: -40.0,
                                        top: -40.0,
                                        child: InkResponse(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const CircleAvatar(
                                            child: Icon(Icons.close),
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                      ),
                                      Form(
                                        key: _formKey,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            const Text(
                                              "Filter", style: TextStyle(
                                              fontSize: 30
                                            ),
                                            ),
                                            SizedBox(height: 15,),
                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text("Pricing",style: TextStyle(
                                                      fontSize: 24
                                                  ),),
                                                  SizedBox(height: 80,),
                                                  Text("Colors",style: TextStyle(
                                                      fontSize: 24
                                                  ),),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 50.0),
                                                child: Column(
                                                  children: const [
                                                    Text("Type",style: TextStyle(
                                                        fontSize: 24
                                                    ),),
                                                    SizedBox(height: 80,),
                                                    Text("",style: TextStyle(
                                                        fontSize: 24
                                                    ),),
                                                  ],
                                                ),
                                              ),
                                            ],),
                                            SizedBox(height: 80,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/save.png"),
                                                SizedBox(width: 5,),
                                                Text("Save",style: TextStyle(fontSize: 30),),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                             },
                        child: Row(
                          children: const [
                            Icon(Icons.filter_alt),
                            Text("Filter"),
                          ],
                        ),
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

                  decoration: const BoxDecoration(
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
