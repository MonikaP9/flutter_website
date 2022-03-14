import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
   MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF6158E6),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){

                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white,fontSize:22 ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top : 5.0 ,bottom: 5.0),
              child: Divider(
                color: Colors.blueGrey.shade400,
                thickness: 2,
              ),
              ),
              InkWell(
                onTap: (){

                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white,fontSize:22 ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 5.0 ,bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Text(
                  'Read',
                  style: TextStyle(color: Colors.white,fontSize:22 ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 5.0 ,bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white,fontSize:22 ),
                ),
              ),
              Expanded(child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright @ 2022',style: TextStyle(
                  color: Colors.blueGrey.shade300,
                  fontSize: 14,
                ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
