import 'package:ebusinesscards/screens/login_screen.dart';
import 'package:ebusinesscards/screens/registration.dart';
import 'package:ebusinesscards/screens/select_plan_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectPlan(),
    );
  }
}
