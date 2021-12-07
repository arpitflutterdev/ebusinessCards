import 'package:ebusinesscards/utils/Strings.dart';
import 'package:ebusinesscards/widgets/user_onboarding_widget.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              backImage(context),
              eBusinessWidget(context),
              Positioned(
                top: 300,
                right: 30,
                child: Container(
                  height: 370,
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
                          child: greeting(context, Strings().welcomeback)),
                      controller(context, Strings().email, "assets/mail1.png",
                          "assets/mail2.png"),
                      controller2(context, Strings().pass, "assets/lock2.png",
                          'assets/lock.png'),
                      loginSignupButton(
                        context,
                        Strings().login,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      accountInfo(context, "Don't have an account yet ?"),
                      loginInfo(context, "Create an account")
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
