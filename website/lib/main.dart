import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:website/screens/routes.dart';
import 'package:website/widgets/bottom_bar.dart';
import 'package:website/widgets/carousel.dart';
import 'package:website/widgets/main_heading.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, widget!),
      //     maxWidth: 1200,
      //     minWidth: 450,
      //     defaultScale: true,
      //     breakpoints: [
      //       const ResponsiveBreakpoint.resize(450, name: MOBILE),
      //       const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //       const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //       const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //     ],
      //     background: Container(color: const Color(0xFFF5F5F5))),
      // onGenerateRoute: (RouteSettings settings) {
      //   return Routes.fadeThrough(settings, (context) {
      //     switch (settings.name) {
      //       case Routes.home:
      //         return MainCarousel();
      //       default:
      //         return const SizedBox.shrink();
      //     }
      //   });
      // },
    );
  }
}
