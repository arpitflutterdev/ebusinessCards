import 'package:ebusinesscards/widgets/user_onboarding_widget.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              backImage(context),
              eBusinessWidget(context),
              Positioned(
                top: 230,
                right: 30,
                child: Container(
                  height: 467,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 3.0))
                    ],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                          child: greeting(context, 'Welcome')),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 50,
                          width: 230,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff172A3A)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Image.asset("assets/name_bound.png"),
                                    Positioned(
                                        top: 14,
                                        left: 3,
                                        child: Image.asset(
                                            "assets/name_middle.png")),
                                    Positioned(
                                        top: 3,
                                        left: 8,
                                        child: Image.asset("assets/name.png")),
                                  ],
                                ),
                              ),
                              const Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        ),
                      ),
                      controller(context, "Email", "assets/mail1.png",
                          "assets/mail2.png"),
                      controller2(context, "Password", "assets/lock2.png",
                          'assets/lock.png'),
                      controller2(context, "Repeat Password",
                          "assets/lock2.png", "assets/lock.png"),
                      loginSignupButton(context, 'Continue'),
                      const SizedBox(
                        height: 10,
                      ),
                      accountInfo(context, "Already have an account ?"),
                      loginInfo(context, "Log In")
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
