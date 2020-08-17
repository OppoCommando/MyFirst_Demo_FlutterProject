
import 'package:demoproject/ImportPackages/importpackage.dart';


class EventPage extends StatelessWidget {
 static const String routeName = '/eventPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Events"),
       ),
       drawer: NavigationDrawer(),
       body: Center(child: Text("Hey! this is events list page")));
 }
}