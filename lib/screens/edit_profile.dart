import 'package:ebusinesscards/utils/colors.dart';
import 'package:ebusinesscards/utils/images.dart';
import 'package:ebusinesscards/widgets/select_category&items.dart';
import 'package:flutter/material.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                    Text("Edit Profile",style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),),
                    Text("Cancel", style: TextStyle(
                        fontSize: 16
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160.0,left: 55),
                child:
                Column(
                  children: [
                    Text("Name",style: TextStyle(fontSize: 32),),
                    Container(height: 50,width: 230,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colours().loginBoxColor,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            isDense: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Text("Email",style: TextStyle(fontSize: 32),),
                    Container(height: 50,width: 230,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colours().loginBoxColor,
                          ),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            isDense: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/savedetails.png"))
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/changepass.png"))
                      ),
                    )
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
    );;
  }
}
