
import 'package:demoproject/src/Activities/HomeMain.dart';
import 'package:demoproject/src/Activities/LoginPage.dart';
import 'package:flutter/material.dart';

import 'src/Fragments/EventPage.dart';
import 'src/Fragments/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return new MaterialApp(
     title: 'NavigationDrawer Demo',
     theme: new ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: LoginPage()
 );
 }
}