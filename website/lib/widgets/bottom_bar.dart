import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/widgets/responsive.dart';

import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBar extends StatelessWidget {
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  final Size screenSize;
  BottomBar({Key? key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.09),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: gradientStartColor,
                offset: Offset(1.0, 6.0),
                blurRadius: 1.0,
              ),
              BoxShadow(
                color: gradientEndColor,
                offset: Offset(1.0, 6.0),
                blurRadius: 1.0,
              )
            ],
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: const FractionalOffset(0.2, 0.2),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            )),
        padding: EdgeInsets.all(30),
        child: MediaQuery.of(context).size.width < 800
            ? Column(
                children: [
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: BottomBarColumn(
                          heading: 'ABOUT',
                          s1: 'Contact Us',
                          s2: 'About Us',
                          s3: 'Careers',
                        ),
                      ),
                      
                      Expanded(
                        child: BottomBarColumn(
                          heading: 'HELP',
                          s1: 'Payment',
                          s2: 'Cancellation',
                          s3: 'FAQ',
                        ),
                      ),
                      
                      Expanded(
                        child: BottomBarColumn(
                          heading: 'SOCIAL',
                          s1: 'Twitter',
                          s2: 'Facebook',
                          s3: 'YouTube',
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoText(
                        type: 'Email',
                        text: 'abc@gmail.com',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InfoText(
                        type: 'Address',
                        text: '128, MG Road ',
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Copyright @ 2022',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomBarColumn(
                        heading: 'ABOUT',
                        s1: 'Contact Us',
                        s2: 'About Us',
                        s3: 'Careers',
                      ),
                      BottomBarColumn(
                        heading: 'HELP',
                        s1: 'Payment',
                        s2: 'Cancellation',
                        s3: 'FAQ',
                      ),
                      BottomBarColumn(
                        heading: 'SOCIAL',
                        s1: 'Twitter',
                        s2: 'Facebook',
                        s3: 'YouTube',
                      ),
                      Container(
                        color: Colors.white,
                        width: 2,
                        height: 150,
                      ),
                      Container(
                        width: screenSize.width * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoText(
                              type: 'Email',
                              text: 'abc@gmail.com',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InfoText(
                              type: 'Address',
                              text: '128, MG Road ',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Copyright @ 2022',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
      ),
    );
  }
}
