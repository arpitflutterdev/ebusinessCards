import 'package:ebusinesscards/screens/list_templates_screen.dart';
import 'package:ebusinesscards/utils/Strings.dart';
import 'package:ebusinesscards/utils/colors.dart';
import 'package:ebusinesscards/widgets/user_onboarding_widget.dart';
import 'package:flutter/cupertino.dart';
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
                      _emailController(),
                      _passwordController(),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ListTemplates())),
                        child: loginSignupButton(
                          context,
                          Strings().login,
                        ),
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

  Widget _emailController(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 50,
        width: 270,
        decoration: BoxDecoration(
            border: Border.all(color: Colours().loginBoxColor),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Image.asset("assets/mail1.png"),
                  Image.asset("assets/mail2.png"),
                ],
              ),
            ),
            Container(
              width: 228,
              height: 30,
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget _passwordController(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 50,
        width: 270,
        decoration: BoxDecoration(
            border: Border.all(color: Colours().loginBoxColor),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset("assets/lock2.png"),
                  Image.asset("assets/lock.png"),
                ],
              ),
            ),
            Container(
              width: 228,
              height: 30,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}
