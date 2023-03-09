
// import 'package:expense_tracker/app/ui/screens/homescreen.dart';
import 'package:expense_tracker/app/ui/screens/loginscreen.dart';

import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/app/ui/screens/SplashScreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main(){
  runApp(ExpenseApp());
}
class ExpenseApp extends StatelessWidget {
  const ExpenseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: eBackgroundcolor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: ewhite),
      ),
      // home: AnimatedSplashScreen(
      //   splash: splash(),
      //   nextScreen: login(),
      //   splashTransition: SplashTransition.fadeTransition,
      //   backgroundColor: eblack,
      // ),
      home: splash(),
    );
  }
}

