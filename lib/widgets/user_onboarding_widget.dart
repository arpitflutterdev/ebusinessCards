import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          border: Border.all(color: Color(0xff172A3A)),
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
          border: Border.all(color: const Color(0xff172A3A)),
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
