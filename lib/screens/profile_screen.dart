import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Padding(
                padding: const EdgeInsets.only(top: 100.0,left: 14,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Profile",style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),),
                    Text("Edit", style: TextStyle(
                      fontSize: 16
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 159.0,left: 25),
                child:
                    Column(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/profile.png"
                              )
                            )
                          ),
                        ),
                        Text("Hannah Morales",style: TextStyle(fontSize: 32),),
                        Text("morales.hannah@ibm.com",style: TextStyle(fontSize: 26),),
                        Text("IBM",style: TextStyle(fontSize: 18),),
                        SizedBox(height: 10,),
                        Text("Get a custom card design",style: TextStyle(fontSize: 26),),
                        Image.asset("assets/savetrees.png",height: 200,width: 300,),
                      ],
                    ),),

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
