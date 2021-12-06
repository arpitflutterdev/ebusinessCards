import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child: SingleChildScrollView(
       child: Stack(
         overflow: Overflow.visible,
         children: [
           Container(
             height: 500,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage('assets/vector1.png',),
                 fit: BoxFit.cover
               ),
             ),
           ),
           Positioned(
             top: 70,
             left: 80,
             child: Container(
               height: 120,
               width: 200,
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage('assets/card1.png',),
                     fit: BoxFit.cover
                 ),
               ),
             ),
           ),

           Positioned(
             top: 300,
             right: 30,
             child: Container(
               height: 370,
               width: 300,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                     blurRadius: 15.0,
                    offset: new Offset(0.0, 3.0)
                  )
                 ],
                 borderRadius: BorderRadius.circular(50.0),
               ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                     child: Text('Welcome back', style: TextStyle(
                       fontSize: 38
                     ),),
                   ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: 50,
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff172A3A)),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Stack(
                               children: [
                                 Image.asset('assets/mail2.png'),
                                 Image.asset('assets/mail1.png'),
                               ],
                             ),
                           ),
                            Text("Email", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w200),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 10.0),
                      child: Container(
                        height: 50,
                        width: 230,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff172A3A)),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/lock2.png'),
                                  Image.asset('assets/lock.png'),
                                ],
                              ),
                            ),
                            Text("Password", style: TextStyle(fontSize: 24,fontWeight: FontWeight.w200),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/rect38.png',),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5,),
                          Image.asset('assets/vectorend.png'),
                          Image.asset('assets/vectorstart.png'),
                          SizedBox(width: 10,),
                          Text('Login',style: TextStyle(
                              fontSize: 24,
                            fontWeight: FontWeight.w200,
                            color: Colors.white70
                          )),

                        ],
                      ),
                    ),
                        SizedBox(height: 20,) ,
                    Text("Don\'t have an account yet ?", style: TextStyle(color: Colors.black54,
                    fontWeight: FontWeight.w300
                    ),),
                    Text("Create an account", style: TextStyle(color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    ),),
                  ],

                ),
             ),
           ),

         ],
       ),
     ),

     ),
    );
  }
}
