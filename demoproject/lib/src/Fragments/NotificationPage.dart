
import 'package:demoproject/widgets/NavigationDrawer.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
 static const String routeName = '/notificationPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Notifications"),
       ),
       drawer: NavigationDrawer(),
       body: Center(child: Text("This is notification page")));
 }
}