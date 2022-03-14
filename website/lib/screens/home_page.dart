import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:website/widgets/bottom_bar.dart';
import 'package:website/widgets/carousel.dart';
import 'package:website/widgets/content.dart';
import 'package:website/widgets/featured_heading.dart';
import 'package:website/widgets/featured_tiles.dart';
import 'package:website/widgets/floating_quick_access_bar.dart';
import 'package:website/widgets/main_heading.dart';
import 'package:website/widgets/menu_drawer.dart';
import 'package:website/widgets/top_bar_contents.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener(){
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

@override
  void initState() {
    // TODO: implement initState
  _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40 ?
        _scrollPosition / (screenSize.height * 0.40) : 1;



    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800 ? AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity( _opacity),
        title: Text('Author',
          style: TextStyle(
            color: Color(0xFF077BD7),
            fontSize: 26,
            fontWeight: FontWeight.w900,
            fontFamily: 'Raleway',
            letterSpacing: 3,
          ),
        ),
      ) : PreferredSize(
        preferredSize: Size(screenSize.width,78),
        child: TopBarContents(_opacity),
      ),
      drawer: MenuDrawer(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width: screenSize.width,
                    child: Image.asset('assets/images/background.png',
                    fit: BoxFit.cover,),
                  ),
                ),
      Column(
                    children: [
                      FloatingQuickAccessBar(screenSize :screenSize),
                      FeaturedHeading(screenSize : screenSize),
                      FeaturedTiles(screenSize : screenSize),
                      MainHeading(screenSize : screenSize),
                      MainCarousel(),
                      BottomBar(screenSize : screenSize),
                   //  Content(),
                   //    ResponsiveWrapper(
                   //      child: ResponsiveRowColumn(
                   //        rowMainAxisAlignment: MainAxisAlignment.center,
                   //        rowPadding: const EdgeInsets.all(30),
                   //        columnPadding: const EdgeInsets.all(30),
                   //        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                   //            ? ResponsiveRowColumnType.COLUMN
                   //            : ResponsiveRowColumnType.ROW,
                   //        children: [
                   //          ResponsiveRowColumnItem(
                   //            rowFlex: 1,
                   //            child: Text('1'),
                   //          ),
                   //          ResponsiveRowColumnItem(
                   //            rowFlex: 1,
                   //            child:  Text('1'),
                   //          ),
                   //        ],
                   //      ),
                   //    ),


                    ],
                  ),

              ],
            )
          ],
        ),
      ),

    );
  }
}
