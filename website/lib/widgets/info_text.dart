import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

   InfoText({Key? key, required this.type, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            '$type',
            style: TextStyle(
              color: Colors.blueGrey[200],
              fontSize: 16,
            ),
          ),
        ),
        Flexible(child: Text(text,style: TextStyle(
          color: Colors.white60,
          fontSize: 16,
        ),))
      ],
    );
  }
}
