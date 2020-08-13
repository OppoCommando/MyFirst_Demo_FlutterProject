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

class NavScreen extends StatefulWidget{
  _NavScreenState  createState()=>_NavScreenState();
  }
  
  class _NavScreenState extends State<NavScreen>
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
          bottomNavigationBar: Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                
                color: Colors.white,
                child: CustomTapBar(
                   _icons,
                   _selectedIndex,
                  (index) => setState(() => _selectedIndex = index),
                ),
              )
            
              )
            
      
    );
  }
   }