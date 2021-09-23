import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunez/profile.dart';

class Front extends StatefulWidget {

  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
  int tabIndex =0;

  List tabs =[
    Profile(),
    Profile(),
    Profile(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff220E24),
      body: Profile(),
      extendBody: true,
      bottomNavigationBar:  DotNavigationBar(

        currentIndex: tabIndex,
        onTap: (index){
          setState(() {
            tabIndex = index;
          });
        },
        // itemPadding: EdgeInsets.symmetric(vertical: 5),

        backgroundColor: Color(0xff220E24),
        dotIndicatorColor: Colors.white,
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.white,
            unselectedColor: Colors.white
          ),

          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border,),
              selectedColor: Colors.white,
              unselectedColor: Colors.white

          ),

          DotNavigationBarItem(
            icon: ImageIcon(AssetImage('images/library.png')),
              selectedColor: Colors.white,
              unselectedColor: Colors.white
          ),

          DotNavigationBarItem(
            icon: Icon(Icons.person),
              selectedColor: Colors.white,
              unselectedColor: Colors.white
          ),

        ],
      ),
    );

  }
}