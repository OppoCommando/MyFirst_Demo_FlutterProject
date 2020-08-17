import 'package:demoproject/ImportPackages/importpackage.dart';
//import 'package:json/components/app_bar_icon.dart';

class NotificationPage extends StatefulWidget{
  @override
 _NotificationPage createState() => _NotificationPage();
   
 }
 
 class _NotificationPage extends State<NotificationPage> 
 {
    final TrackingScrollController _trackingScrollController =
      TrackingScrollController();
        @override
          void dispose() {
            _trackingScrollController.dispose();
            super.dispose();
          }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: facebook_dgrey_color,
        body: Responsive(
          mobile:_HomeScreenMobile(scrollController: _trackingScrollController), 
          desktop: null,
                  ),
                ),
              );
            }
          
                    
          
            
           }
          
class _HomeScreenMobile  extends StatelessWidget
  {
    
    final TrackingScrollController scrollController;
    const _HomeScreenMobile({
     Key key,
     @required this.scrollController,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
      CustomScrollView(
      controller: scrollController,
      slivers: <Widget>[
        SliverAppBar(
         automaticallyImplyLeading: false,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title:Text('Notifications',
          style: headStyleForOther,
        ),
        centerTitle: false,
        floating: true,
         actions: <Widget>[
          AppBarSearchIcon(FontAwesomeIcons.search),
          
          ],
        )
      ],
        )
        );
  }
}