import 'package:flutter/cupertino.dart';

Positioned listCategories(double top, double left,String imgPath) {
  return Positioned(
    top: top,
    left: left,
    child: Container(
      height: 160,
      width: 160,
      decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.contain)),
    ),
  );
}

Container navbarContents(String imagePath,double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath))),
  );
}

BoxDecoration rectangleDecoration(String imagePath) {
  return BoxDecoration(
      image:
      DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath)));
}