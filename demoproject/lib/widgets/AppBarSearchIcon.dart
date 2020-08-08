import 'package:demoproject/design/constants.dart';
import 'package:demoproject/src/Activities/HomeMain.dart';
//import 'package:demoproject/src/Activities/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class AppBarSearchIcon extends StatelessWidget{
  IconData icon;
   AppBarSearchIcon(IconData icon)
   {
     this.icon=icon;
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeMain()));
              },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: facebook_grey_color,
        ),
        child: Center(
          child: Icon(icon, color: facebook_icon_color,size: 25,),
        ),
      ),
    );
  }
  
}