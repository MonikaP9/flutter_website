import 'package:flutter/material.dart';
import 'package:website/widgets/responsive.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  final Size screenSize;

   FloatingQuickAccessBar({ required this.screenSize});


  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];

  List<String> items = ['History', 'Science', 'Philisophy', 'Novels'];

  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            items[i],
            style: TextStyle(
              color: _isHovering[i] ? Colors.blueGrey[900] : Colors.blueGrey,
            ),
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      rowElements.add(elementTile);
      if(i < items.length - 1){
        rowElements.add(spacer);
      }
    }
    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height *0.60,
         left:ResponsiveWidget.isSmallScreen(context) ? widget.screenSize.width /12 : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context) ? widget.screenSize.width /12 : widget.screenSize.width / 5,
        ),
        child:widget.screenSize.width < 800 ?   Column(
          children: [
            for(int i=0; i<items.length;i++)
            Padding(
              padding: EdgeInsets.only(bottom: widget.screenSize.height / 40),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.only(top: widget.screenSize.height / 45,
                  bottom:widget.screenSize.height / 45,
                  left: widget.screenSize.width /40),
                  child: Row(
                    children: [
                      Icon(icons[i]),
                      SizedBox(width: widget.screenSize.width / 50,),
                      InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onHover: (value) {
                          setState(() {
                            value ? _isHovering[i] = true : _isHovering[i] = false;
                          });
                        },
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            items[i],
                            style: TextStyle(
                              color: _isHovering[i] ? Colors.blueGrey[900] : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ) : Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
                top: this.widget.screenSize.height /50,
              bottom: this.widget.screenSize.height /50,
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generateRowElements(),
            ),
          ),
        ),
      ),
    );
  }
}
