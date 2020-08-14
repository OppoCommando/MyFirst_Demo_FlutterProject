import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demoproject/src/Activities/HomeDashBoard.dart';
import 'package:demoproject/src/Fragments/ContactPage.dart';
import 'package:demoproject/src/Fragments/EventPage.dart';
import 'package:demoproject/src/Fragments/GroupsPage.dart';
import 'package:demoproject/src/Fragments/HomePage.dart';
import 'package:demoproject/src/Fragments/ProfilePage.dart';
import 'package:demoproject/widgets/CustomTapBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomNavbarScreen extends StatefulWidget{
  _CustomNavbarScreenState  createState()=>_CustomNavbarScreenState();
  }
  
  class _CustomNavbarScreenState extends State<CustomNavbarScreen>
   {
       final List<Widget> _screens = [
         
         GroupsPage(),
         EventPage(),
         HomeDashBoard(),
         HomePage(),
         ContactPage(),
        // ProfilePage()

         ];

  final List<IconData> _icons = const [
    
    MdiIcons.accountGroupOutline,
    Icons.ondemand_video,
    Icons.home,
    MdiIcons.accountCircleOutline,
    MdiIcons.bellOutline,
   // Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //final Size screenSize = MediaQuery.of(context).size;
    // GlobalKey _bottomNavigationKey = GlobalKey();
   
    return DefaultTabController(
       length: _icons.length,
       child: Scaffold(
         appBar: null,
         body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
         bottomNavigationBar: CurvedNavigationBar(
            index: 2,
            height: 50,
            items: <Widget>[
              Icon(MdiIcons.accountGroupOutline, size: 30),
              Icon(Icons.ondemand_video, size: 30),
              Icon(Icons.home, size: 30),
              Icon(MdiIcons.accountCircleOutline, size: 30),
              Icon(MdiIcons.bellOutline, size: 30),
            ],
            color: Colors.blue,
            buttonBackgroundColor: Colors.blue,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) => setState(() => _selectedIndex = index)),
            
              )
            
      
    );
  }
   }