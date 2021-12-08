import 'package:ebusinesscards/bloc/login_bloc.dart';
import 'package:ebusinesscards/screens/category_screen.dart';
import 'package:ebusinesscards/screens/login_screen.dart';
import 'package:ebusinesscards/screens/registration.dart';
import 'package:ebusinesscards/screens/select_plan_screen.dart';
import 'package:ebusinesscards/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/change_image_subscription_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginBloc>(create: (context) => LoginBloc(),),
      ],
      child: MaterialApp(
        // home: BlocProvider(
        //     create: (_)=> ChangeImage(0),
        //     child: SelectPlan()),
        initialRoute: '/',
        routes: {
          '/' : (context) => const Categories(),

        },
        ),
    );
  }
}
