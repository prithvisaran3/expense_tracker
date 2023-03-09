
import 'package:expense_tracker/app/ui/screens/loginscreen.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:expense_tracker/app/ui/widget/common_button.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/app/ui/widget/common_textform_field.dart';

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
                  CommonTextFormField(
                      prefixIcon: Icon(Icons.person,color: ePrimaryColor),
                      hintText: "Enter your Name",
                      // controller: AuthController.to.lEmail,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Name field required";
                        }
                        return null;
                      }),
                  // TextFormField(
                  //   keyboardType: TextInputType.name,
                  //   decoration: InputDecoration(
                  //     prefixIcon: Align(
                  //       widthFactor: 1.0,
                  //       heightFactor: 1.0,
                  //       child: Icon(
                  //         Icons.person,
                  //         color: ePrimaryColor,
                  //       ),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide:  BorderSide(color: ewhite),
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     hintText: "Name",
                  //     hintStyle: TextStyle(color: ewhite),
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  CommonTextFormField(
                      prefixIcon: Icon(Icons.phone,color: ePrimaryColor),
                      hintText: "Enter your Phone Number",
                      // controller: AuthController.to.lEmail,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Phone Number field required";
                        }
                        return null;
                      }),
                  SizedBox(height: 20),
                  CommonTextFormField(
                      prefixIcon: Icon(Icons.email_rounded,color: ePrimaryColor),
                      hintText: "Enter your Email",
                      // controller: AuthController.to.lEmail,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Email field required";
                        }
                        return null;
                      }),
                  SizedBox(height: 20),
                  CommonTextFormField(
                      prefixIcon: Icon(Icons.key,color: ePrimaryColor),
                      hintText: "Enter your Password",
                      // controller: AuthController.to.lEmail,
                      validator: (data) {
                        if (data!.isEmpty || data == "") {
                          return "Password field required";
                        }
                        return null;
                      }),
                  SizedBox(height: 40),
                  CommonButton(
                      text: "SignUp",
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return esignup();
                        }));
                      }
                  ),
                  SizedBox(height: 40),
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
