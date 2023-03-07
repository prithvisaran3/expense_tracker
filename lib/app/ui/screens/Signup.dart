
import 'package:expense_tracker/app/ui/screens/loginscreen.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

class esignup extends StatelessWidget {
  const esignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: eblack,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: ewhite,
                            fontSize: 52,
                            fontWeight: FontWeight.bold,
                          ),
                          text: "Register \n",
                          children: [
                            TextSpan(
                              style: TextStyle(
                                color: ePrimaryColor,
                              ),
                              text: "Now.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.person,
                          color: ePrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(color: ewhite),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Name",
                      hintStyle: TextStyle(color: ewhite),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.phone_android,
                          color: ePrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ewhite),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: ewhite),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.email_rounded,
                          color: ePrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: ewhite),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Email",
                      hintStyle: TextStyle(color: ewhite),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.key,
                          color: ePrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: ewhite),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Password",
                      hintStyle: TextStyle(color: ewhite),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return esignup();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Container(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(color: eblack),
                      )),
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
                        )),
                  ),

                  //SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Divider(
                          color: ewhite,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("or"),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Divider(
                          color: ewhite,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already a Member?  "),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return login();
                          }));
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: ePrimaryColor,
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
