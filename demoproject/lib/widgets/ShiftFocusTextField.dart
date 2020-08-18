import 'package:demoproject/design/constants.dart';
import 'package:demoproject/src/Activities/CustomNavbarScreen.dart';
import 'package:demoproject/src/Activities/LoginPage.dart';
import 'package:flutter/material.dart';

class ShiftFocusTextField extends StatelessWidget{

    String title;
    bool isPassword;

     ShiftFocusTextField(String title,{bool isPassword = false}) 
      {
        this.title=title;
        this.isPassword=isPassword;
      }
      

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.only(left : 2.0),
      child: Column(
        
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Text(
            this.title,
         
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
           SizedBox(
            height: 5,
            ),
            TextField(
              obscureText: isPassword,
              
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                   border: OutlineInputBorder(
                     
                borderRadius: BorderRadius.circular(15.0),
                
              ),
                  
                  fillColor: Color(0xfff3f3f4),
                  filled: true))

       ],
     ),
    );
  }
  
  
}