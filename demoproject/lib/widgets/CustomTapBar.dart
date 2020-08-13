import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget{
 List<IconData> icons;
   int selectedIndex;
   Function(int) onTap;
   bool isBottomIndicator;

  /* CustomTapBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);*/

  CustomTapBar(List<IconData> icons, int selectedIndex,Function(int) onTap){
     this.icons=icons;
    this.selectedIndex=selectedIndex;
    this.onTap=onTap;
     this.isBottomIndicator = false;
  }


  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Colors.red,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Colors.blue
                        : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
  
}