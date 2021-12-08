import 'package:ebusinesscards/bloc/change_image_subscription_bloc.dart';
import 'package:ebusinesscards/screens/category_screen.dart';
import 'package:ebusinesscards/utils/Strings.dart';
import 'package:ebusinesscards/widgets/user_onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPlan extends StatefulWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  _SelectPlanState createState() => _SelectPlanState();
}

class _SelectPlanState extends State<SelectPlan> {
  int num = 1;
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
                          child: greeting(context, Strings().plan)),
                      selectPlans(context),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/categories'),
                        child: loginSignupButton(
                          context,
                          Strings().register,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      accountInfo(context,Strings().accountInfo),
                      loginInfo(context, Strings().loginInfo)
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

  Widget selectPlans(BuildContext context) {
    var _imageVar = BlocProvider.of<ChangeImage>(context);
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        gestureDetector(_imageVar, "assets/arrow.png"),
        Container(
          height: 230,
          width: 190,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/calender.png"))),

                child:
                subscriptionPlan(context,
                    "assets/six.png",
                    "assets/twelve.png",
                    "assets/one.png"),
              ),
              SizedBox(height: 5,),
              Container(
                child: subscriptionPlan(context,
                    "assets/halfyearsubscription.png",
                    "assets/yearsubscription.png",
                    "assets/monthsubscription.png"),
              ),

              Container(
                child: subscriptionPlan(context,
                    "assets/sixmonthbill.png",
                    "assets/yearbill.png",
                    "assets/monthbill.png"),
              )
              //here to paste container
            ],
          ),
        ),
        gestureDetector(_imageVar,"assets/arrowright.png"),
      ],
    );
  }

  GestureDetector gestureDetector(ChangeImage _imageVar,String imgPath) {
    return GestureDetector(
        onTap: (){
          if(num % 3 == 1){
            _imageVar.add(ImageUpdater.zero);
          }
          else if(num % 3 == 2){
            _imageVar.add(ImageUpdater.one);
          }
          else if(num % 3 == 0){
            _imageVar.add(ImageUpdater.two);
          }
          setState(() {
            num = num +1;
          });
        },
          child: Image.asset(imgPath));
  }
}
