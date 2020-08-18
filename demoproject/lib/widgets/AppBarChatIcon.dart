import 'package:demoproject/ImportPackages/importpackage.dart';

// ignore: must_be_immutable
class AppBarChatIcon extends StatelessWidget{
  IconData icon;
   AppBarChatIcon(IconData icon)
   {
     this.icon=icon;
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMasterPage()));
              },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: facebook_grey_color,
        ),
        child: Center(
          child: Icon(icon, color: facebook_icon_color,size: 25,),
        ),
      ),
    );
  }
  
}