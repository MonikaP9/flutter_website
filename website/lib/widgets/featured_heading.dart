import 'package:flutter/material.dart';
import 'package:website/widgets/responsive.dart';

class FeaturedHeading extends StatelessWidget {
  final Size screenSize;

  FeaturedHeading({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          top:screenSize.height * 0.06 ,
          left:screenSize.width / 15 ,
          right:screenSize.width / 15 ,
          ),
      child:screenSize.width <800 ?Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Featured',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF077bd7),
                ),
              ),
              SizedBox(height:5 ,),
              Text(
                'Clue of the wooden cottage',
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ],
      ) : Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Featured',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              color: Color(0xFF077bd7),
            ),
          ),
          Expanded(
            child: Text(
              'Clue of the wooden cottage',
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
