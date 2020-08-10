import 'package:demoproject/design/constants.dart';
import 'package:demoproject/widgets/AppBarSearchIcon.dart';
import 'package:demoproject/widgets/Responsive.dart';
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
    final TrackingScrollController _trackingScrollController =
      TrackingScrollController();
        @override
          void dispose() {
            _trackingScrollController.dispose();
            super.dispose();
          }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile:_HomeScreenMobile(scrollController: _trackingScrollController),
                  ),
                ),
              );
            }
          
                    
          
            
           }
          
class _HomeScreenMobile  extends StatelessWidget
  {
    final TrackingScrollController scrollController;
    const _HomeScreenMobile({
     Key key,
     @required this.scrollController,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
      CustomScrollView(
      controller: scrollController,
      slivers: <Widget>[
        SliverAppBar(
         automaticallyImplyLeading: false,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title:Text('Faceboook',
          style: headStyle,
        ),
        centerTitle: false,
        floating: true,
         actions: <Widget>[
          AppBarSearchIcon(FontAwesomeIcons.search),
          AppBarSearchIcon(FontAwesomeIcons.search),
          ],
        )
      ],
        )
        );
  }

              

          }