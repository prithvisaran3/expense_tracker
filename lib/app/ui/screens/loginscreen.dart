import 'dart:math';
import 'dart:ui';

import 'package:expense_tracker/app/ui/screens/Signup.dart';
import 'package:expense_tracker/app/ui/screens/homescreen.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:expense_tracker/app/ui/widget/common_textform_field.dart';
import 'package:flutter/material.dart';
// import 'package:slide_to_act/slide_to_act.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: ewhite,
                            fontSize: 52,
                            fontWeight: FontWeight.bold,
                          ),
                          text: "Hey,  \nLogin",
                          children: [
                            TextSpan(
                              style: TextStyle(
                                color: ePrimaryColor,
                              ),
                              text: " Now.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  CommonTextFormField(
                      hintText: "Enter your email",
                      // controller: AuthController.to.lEmail,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Email field required";
                        }
                        return null;
                      }),
                  CommonTextFormField(
                      hintText: "Enter your password",
                      obscureText: true,
                      // controller: AuthController.to.lPassword,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Password field required";
                        } else if (data.length < 2) {
                          return "Password atleast 6 character";
                        }
                        return null;
                      }),
                  SizedBox(height: 20),
                  // SlideAction(
                  //   borderRadius: 12,
                  //   elevation: 0,
                  //   innerColor: ePrimaryColor,
                  //   outerColor: Colors.eblack12,
                  //   sliderButtonIcon: Icon(
                  //     Icons.lock_open,
                  //     size: 15,
                  //   ),
                  //   text: 'Swipe to Login',
                  //   textStyle: TextStyle(
                  //     fontSize: 18,
                  //   ),
                  //   onSubmit: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) {
                  //       return login();
                  //     }));
                  //   },
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Login",
                        style: TextStyle(color: eblack),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 1,
                      primary: ePrimaryColor,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: ewhite,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return esignup();
                          }));
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: ePrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
