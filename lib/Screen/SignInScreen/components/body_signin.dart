import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:maytest/Screen/SignInScreen/components/signin_form.dart';
import 'package:maytest/Screen/SignInScreen/components/signin_method.dart';
import 'package:maytest/Screen/SignUpScreen/components/signup_form.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../SignUpScreen/signup_screen.dart';

class BodySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
      children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Text(
                    "LOGO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SignInForm(),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                          child: Text("Register",
                          style: TextStyle(
                              color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.03
                          ),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FittedBox(
                      child: Text(
                        "Sign in using",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    signin_method()
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
              ))
      ],
    ),
        ));
  }
}
