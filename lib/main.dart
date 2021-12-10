import 'package:ebusinesscards/bloc/cred_operations/auth_bloc.dart';
import 'package:ebusinesscards/screens/category_screen.dart';
import 'package:ebusinesscards/screens/item_category.dart';
import 'package:ebusinesscards/screens/list_templates_screen.dart';
import 'package:ebusinesscards/screens/login_screen.dart';
import 'package:ebusinesscards/screens/my_cards_screen.dart';
import 'package:ebusinesscards/screens/new_Card_screen.dart';
import 'package:ebusinesscards/screens/registration.dart';
import 'package:ebusinesscards/screens/select_category.dart';
import 'package:ebusinesscards/screens/select_plan_screen.dart';
import 'package:ebusinesscards/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/change_subscription_plan/change_image_subscription_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthBloc>(create: (context) => AuthBloc(),),
      ],
      child: MaterialApp(
        // home: BlocProvider(
        //     create: (_)=> ChangeImage(0),
        //     child: SelectPlan()),
        initialRoute: '/eighth',
        routes: {
          '/' : (context) => const Categories(),
          '/first' : (context) => const LoginScreen(),
          '/second' : (context) =>  SelectCategory(),
          '/third' : (context) =>  ItemCategory(),
          '/fourth' : (context) => Registration(),
          '/fifth' : (context) => MyCards(),
          '/sixth' : (context) => ListTemplates(),
          '/seventh' : (context) => SplashScreen(),
          '/eighth' : (context) => NewCard(),

       },
        ),
    );
  }
}
