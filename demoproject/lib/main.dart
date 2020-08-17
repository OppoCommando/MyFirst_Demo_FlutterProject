
import 'package:demoproject/src/Activities/CustomNavbarScreen.dart';
import 'package:demoproject/ImportPackages/importpackage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return new MaterialApp(
     title: 'NavigationDrawer Demo',
     theme: new ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: LoginPage()
 );
 }
}