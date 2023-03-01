import 'package:expense_tracker/screens/Signup.dart';
import 'package:expense_tracker/screens/loginscreen.dart';
import 'package:expense_tracker/utils/constant.dart';
import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: kBackgroundcolor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),


      ),

      home: esignup(),
    );
  }
}

