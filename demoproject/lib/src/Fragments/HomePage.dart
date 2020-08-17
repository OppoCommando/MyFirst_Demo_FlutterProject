
import 'package:demoproject/ImportPackages/importpackage.dart';

class HomePage extends StatelessWidget {
 static const String routeName = '/homePage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Home"),
       ),
       backgroundColor: facebook_dgrey_color,
       drawer: NavigationDrawer(),
             body: Center(child: Text("This is home page")
             
             )
             );
             
 }
}