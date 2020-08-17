import 'package:demoproject/ImportPackages/importpackage.dart';
//import 'package:json/components/app_bar_icon.dart';

class HomeDashBoard extends StatefulWidget{
  @override
 _HomeDashBoard createState() => _HomeDashBoard();
   
 }
 
 class _HomeDashBoard extends State<HomeDashBoard> 
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
          title:Text('Mybook',
          style: headStyle,
        ),
        centerTitle: false,
        floating: true,
         actions: <Widget>[
          AppBarSearchIcon(FontAwesomeIcons.search),
          AppBarSearchIcon(FontAwesomeIcons.search),
          ],
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),

         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),//(l,t,r,b)
          sliver: SliverToBoxAdapter(
            child:PostDeclareField("Hi") ,),
        ),
        

        
      ],
        )
        );
  }
}