import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(28.0),
        child: Text(
          "Lorem Ipsum is simply dummy unchanged. and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
      ),
      Device.orientation == Orientation.portrait
          ? Container(
              width: 100.w,
              height: 28.5.h,
              color: Colors.blue,
            )
          : Container(
              width: 100.w,
              height: 20.5.h,
              color: Colors.red,
            ),
      Container(
        padding: EdgeInsets.all(20.sp),
          width: Adaptive.w(80), // This will take 20% of the screen's width
          height: 30.5.h,
          child: Image.asset('assets/images/test1.jpeg')),
    ]);
  }
}
