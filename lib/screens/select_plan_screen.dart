import 'package:ebusinesscards/widgets/user_onboarding_widget.dart';
import 'package:flutter/material.dart';



class SelectPlan extends StatefulWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  _SelectPlanState createState() => _SelectPlanState();
}

class _SelectPlanState extends State<SelectPlan> {
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
                          child: greeting(context, 'Select Plan')),

                      selectPlans(context),
                      SizedBox(height: 30,),

                      loginSignupButton(
                        context,
                        'Register',
                      ),
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


  Widget selectPlans(BuildContext context){
    return Row(
      children: [
        SizedBox(width: 15,),
        Image.asset("assets/arrow.png"),
        Container(
          height: 230,
          width: 200,
          color: Colors.grey,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/calender.png"))
                ),
              )
            ],
          ),
        ),
        Image.asset("assets/arrowright.png"),
      ],
    );
  }
}
