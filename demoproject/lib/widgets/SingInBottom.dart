import 'package:demoproject/ImportPackages/importpackage.dart';

class SingInBottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final yellowColor = Color(0XFFfdd835);
    final blueColor = Color(0XFF5e92f3);
    //TapGestureRecognizer _tapGestureRecognizer;


    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print("Forget Password");
            },
            child: Text(
              "Forget Password ?",
              style: TextStyle(
                color: blueColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            color: blueColor,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomNavbarScreen()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right,
                  color: yellowColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
  
}