import 'package:demoproject/routes/PageRoutes.dart';
import 'package:demoproject/src/Fragments/ContactPage.dart';
import 'package:demoproject/src/Fragments/EventPage.dart';
import 'package:demoproject/src/Fragments/HomePage.dart';
import 'package:demoproject/src/Fragments/NotificationPage.dart';
import 'package:demoproject/src/Fragments/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes:  {
        PageRoutes.home: (context) => HomePage(),
        PageRoutes.contact: (context) => ContactPage(),
        PageRoutes.event: (context) => EventPage(),
        PageRoutes.profile: (context) => ProfilePage(),
        PageRoutes.notification: (context) => NotificationPage(),
      },
    );
  }

}