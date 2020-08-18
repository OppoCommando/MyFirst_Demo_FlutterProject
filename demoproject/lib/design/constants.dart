import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color facebook_blue_color = Color(0xff1773E9);
Color facebook_grey_color = Color(0xffF0F2F5);
Color facebook_dgrey_color = Color(0xffAEB4BB);
Color facebook_icon_color = Color(0xff4B4C4F);
Color Inactive_facebook_color = Color(0xff4B4C4F);
Color Active_facebook_color = Color(0xffE7F3FF);
Color facebook_headtext_color=Color(0xff000000);


TextStyle headStyle = GoogleFonts.roboto(
  textStyle: TextStyle(fontWeight: FontWeight.w900, fontSize:32,color: facebook_blue_color,letterSpacing: -1.2,)
  
);



TextStyle headStyleForOther = GoogleFonts.roboto(
  textStyle: TextStyle(fontWeight: FontWeight.w900, fontSize:32,color: facebook_headtext_color,letterSpacing: 2.1,)
  
);

TextStyle chatheadStyleForOther = GoogleFonts.roboto(
  textStyle: TextStyle(fontWeight: FontWeight.w900, fontSize:32,color: Active_facebook_color ,letterSpacing: 2.1,)
  
);