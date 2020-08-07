import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class BuildBackgroundTopCircle extends StatelessWidget{
  bool _sighIn;
  final blueColor = Color(0XFF5e92f3);
  BuildBackgroundTopCircle(bool _sighIn)
  {
    this._sighIn=_sighIn;
  }

  @override
  Widget build(BuildContext context) {
   return Positioned(
       top: 0,
       child: Transform.translate(
         offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
         child: Transform.scale(
           scale: 1.35,
           child: Container(
             height: MediaQuery.of(context).size.width,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
                 color:  _sighIn ? Colors.grey[800] : blueColor ,
                 borderRadius: BorderRadius.circular(
                   MediaQuery.of(context).size.width,
                 )),
           ),
         ),
       ),
     );
   }

  }


