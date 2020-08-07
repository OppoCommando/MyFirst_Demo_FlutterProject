
import 'package:demoproject/widgets/NavigationDrawer.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
 static const String routeName = '/contactPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Contacts"),
       ),
       drawer: NavigationDrawer(),
       body: Center(child: Text("This is contacts page")));
 }
}