import 'package:demoproject/design/BuildAvatarContainer.dart';
import 'package:demoproject/design/BuildBackgroundBottomCircle.dart';
import 'package:demoproject/design/BuildBackgroundTopCircle.dart';
import 'package:demoproject/widgets/SingInBottom.dart';
import 'package:demoproject/widgets/SingUpBottom.dart';
import 'package:demoproject/widgets/TextFieldWeiget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SignUpPage extends StatefulWidget{
  @override
 _SignUpPage createState()=> _SignUpPage();

}

class _SignUpPage extends State<SignUpPage> {
  bool _showSignIn;
  final yellowColor = Color(0XFFfdd835);
  final blueColor = Color(0XFF5e92f3);
  TapGestureRecognizer _tapGestureRecognizer;


  @override
  void initState() {
    super.initState();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          print("Hello");
        });
      };
  }

  @override
  Widget build(BuildContext context) {
    _showSignIn=false;
    // TODO: implement build
   return Scaffold(
      body: Stack(
        children: <Widget>[
          BuildBackgroundTopCircle(true),
          BuildBackgroundBottomCircle(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  padding:
                  EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 40),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "CREATE ACCOUNT" ,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      BuildAvatarContainer(true),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOutBack,
                        height: 400,
                        margin: EdgeInsets.only(top: _showSignIn ? 40 : 30),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: SingleChildScrollView(
                            child: buildSignUpTextFieldSection()


                        ),
                      ),
                      SingUpBottom(),
                      RichText(
                        text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Sing in",
                                recognizer: _tapGestureRecognizer,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: blueColor,
                                  fontWeight: FontWeight.bold,

                                ),

                              )

                            ]),

                      )

                    ],
                  ),

                )


            ),
          )
        ],

      ),
    );

  }

  Column buildSignUpTextFieldSection() {
    return Column(
      children: [
        TextFieldWeiget("USERNAME", "test123", false),
        SizedBox(
          height: 20,
        ),
        TextFieldWeiget("EMAIL ADDRESS", "test123", false),
        SizedBox(
          height: 20,
        ),
        TextFieldWeiget("MOBILE NUMBER", "test123", false),
        SizedBox(
          height: 20,
        ),
        TextFieldWeiget("PASSWORD", "*******", true),
      ],
    );
  }
}