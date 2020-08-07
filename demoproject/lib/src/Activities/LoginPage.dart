import 'package:demoproject/design/BuildAvatarContainer.dart';
import 'package:demoproject/design/BuildBackgroundBottomCircle.dart';
import 'package:demoproject/design/BuildBackgroundTopCircle.dart';
import 'package:demoproject/widgets/SingInBottom.dart';
import 'package:demoproject/widgets/TextFieldWeiget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SignUpPage.dart';

class  LoginPage extends StatefulWidget
{
  final String title;
  LoginPage({Key key, this.title}) :super(key:key);

  @override
  _LoginPage createState() => _LoginPage();



}

class _LoginPage extends State<LoginPage>{

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
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
          print("Hello");
        });
      };
  }
  @override
  Widget build(BuildContext context) {
    _showSignIn=true;
    return
        Scaffold(
          body: Stack(
                children: <Widget>[
                  BuildBackgroundTopCircle(false),
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
                                  "SIGN IN" ,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                BuildAvatarContainer(false),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOutBack,
                                  height: _showSignIn ? 240 : 240,
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
                                      child: buildSignInTextFieldSection()


                                    ),
                                ),
                                SingInBottom(),
                                RichText(
                                  text: TextSpan(
                                      text: "Don't have an account? ",
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: "Create an Account",
                                            recognizer: _tapGestureRecognizer,
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: blueColor,
                                              fontWeight: FontWeight.bold,
                                            ))
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

  Column buildSignInTextFieldSection() {
    return Column(
      children: [
        TextFieldWeiget("EMAIL ADDRESS", "test123@gmail.com", false),
        SizedBox(
          height: 30,
        ),
        TextFieldWeiget("PASSWORD", "*******", true),
      ],
    );
  }


}


