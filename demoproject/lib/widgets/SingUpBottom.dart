import 'package:demoproject/ImportPackages/importpackage.dart';

class SingUpBottom extends StatelessWidget{
  @override

    // TODO: implement build
    Widget build(BuildContext context) {
      final yellowColor = Color(0XFFfdd835);
      final blueColor = Color(0XFF5e92f3);
      TapGestureRecognizer _tapGestureRecognizer;
      // TODO: implement build
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            RaisedButton(
              color: yellowColor,
              elevation: 10,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "SUBMIT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      );    }



}