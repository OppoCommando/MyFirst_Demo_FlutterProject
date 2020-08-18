import 'package:demoproject/design/constants.dart';
import 'package:flutter/material.dart';

import 'ShiftFocusTextField.dart';

// ignore: must_be_immutable
class PostDeclareField extends StatelessWidget{
String titel;
PostDeclareField(String title){
  this.titel=title;
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
              height: 100.0,
              color: facebook_dgrey_color,
              child: Row(children: <Widget>[
                Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: facebook_grey_color,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/mypic.png'),
                              fit: BoxFit.cover,
                              )
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ShiftFocusTextField("Create Your Post"),
                        ),
                      ),
              ],
              ),

    );
  }
  
}