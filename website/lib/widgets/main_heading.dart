import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/widgets/responsive.dart';

class MainHeading extends StatelessWidget {
  final Size screenSize;
   MainHeading({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:screenSize.height* 0.07 ,bottom:screenSize.height* 0.09 ),
        child: Text(
          'Knowledge diversity',
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color(0xFF077BD7),
            fontSize: 40,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
