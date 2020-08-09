import 'package:demoproject/design/constants.dart';
import 'package:demoproject/widgets/AppBarSearchIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:json/components/app_bar_icon.dart';

class HomeDashBoard extends StatefulWidget{
  @override
 _HomeDashBoard createState() => _HomeDashBoard();
   
 }
 
 class _HomeDashBoard extends State<HomeDashBoard> 
 {
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Text('Faceboook',
        style: headStyle,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          AppBarSearchIcon(FontAwesomeIcons.search),
          AppBarSearchIcon(FontAwesomeIcons.search),

          
        ],
        ),
        )
        );
  }
}