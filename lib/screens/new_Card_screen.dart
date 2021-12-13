import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';



class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
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
               Positioned(
                 top: 120,left: 20,
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Create new card",style: TextStyle(
                       fontSize: 34
                     ),),
                   ],
                 ),
               ),
              Positioned(
                top: 140,left: 20,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/hannah.png",
                          height: 100,
                          width: 100,
                        ),
                        Image.asset("assets/letstalk.png"
                          ,height: 100,
                          width: 100,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260.0, left: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/Group.png",color: Colors.black,height: 40, width: 40,),
                    SizedBox(width: 10,),
                    Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 310.0, left: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/Group.png",color: Colors.black,height: 40, width: 40,),
                    SizedBox(width: 10,),
                    Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Title"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360.0, left: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/phone.png",color: Colors.black,height: 40, width: 40,),
                    SizedBox(width: 10,),
                    Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Phone"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 410.0, left: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/address.png",color: Colors.black,height: 40, width: 40,),
                    SizedBox(width: 10,),
                    Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Address"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 460.0, left: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/www.png",color: Colors.black,height: 40, width: 40,),
                    SizedBox(width: 10,),
                    Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Website"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 580),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/save.png"),
                    SizedBox(width: 5,),
                    Text("Add to my cards",style: TextStyle(fontSize: 30),),
                  ],
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
