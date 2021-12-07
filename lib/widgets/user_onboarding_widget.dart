import 'package:ebusinesscards/bloc/change_image_subscription_bloc.dart';
import 'package:ebusinesscards/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget backImage(BuildContext context) {
  return Container(
    height: 500,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            'assets/vector1.png',
          ),
          fit: BoxFit.cover),
    ),
  );
}

Widget eBusinessWidget(BuildContext context) {
  return Positioned(
    top: 70,
    left: 80,
    child: Container(
      height: 120,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/card1.png',
            ),
            fit: BoxFit.cover),
      ),
    ),
  );
}

Widget greeting(BuildContext context, String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 38),
  );
}

Widget loginSignupButton(BuildContext context, String text) {
  return Container(
    height: 55,
    width: 230,
    decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
              'assets/rect38.png',
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5.0)),
    child: Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        Image.asset('assets/vectorend.png'),
        Image.asset('assets/vectorstart.png'),
        const SizedBox(
          width: 10,
        ),
        Text(text,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
                color: Colors.white70)),
      ],
    ),
  );
}

Widget controller(
    BuildContext context, String text, String imagePath2, String imagePath1) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      height: 50,
      width: 230,
      decoration: BoxDecoration(
          border: Border.all(color: Colours().loginBoxColor),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Image.asset(imagePath2),
                Image.asset(imagePath1),
              ],
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          )
        ],
      ),
    ),
  );
}

Widget controller2(
    BuildContext context, String text, String imagePath2, String imagePath1) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      height: 50,
      width: 230,
      decoration: BoxDecoration(
          border: Border.all(color: Colours().loginBoxColor),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(imagePath2),
                Image.asset(imagePath1),
              ],
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          )
        ],
      ),
    ),
  );
}

Widget accountInfo(BuildContext context, String text) {
  return Text(text,
      style: const TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.w300,
      ));
}

Widget loginInfo(BuildContext context, String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w300,
    ),
  );
}


Widget subscriptionPlan(BuildContext context,String imagePath1, String imagePath2, String imagePath3){
  return Container(
    child: BlocBuilder<ChangeImage, int>(
        builder: (BuildContext context, int state){
          if (state % 3 == 1) {
            return Image.asset(imagePath1);
          }
          else if (state % 3 == 2) {
            return Image.asset(imagePath2);
          }
          else if(state % 3 == 0){
            return Image.asset(imagePath3);
          }
          else return Container();
        }),
  );
}