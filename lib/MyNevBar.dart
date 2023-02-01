
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class MyNevBar extends StatefulWidget {
  @override
  _MyNevBarState createState() => _MyNevBarState();
}

class _MyNevBarState extends State<MyNevBar>
{
  final user = FirebaseAuth.instance.currentUser!;
  int currentIndex = 0;

  final List<Widget> _telas = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                     floatingActionButton: FloatingActionButton(
                 onPressed: () {
                    FirebaseAuth.instance.signOut();
                 },
              child: Icon(Icons.logout_rounded),
              backgroundColor: Color(0xffd688b0),
              ),
      body: _telas[currentIndex],

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.videocam),
            title: Text('Live'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Temp'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Hum'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Ph'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Tds'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('Lum'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('CO2'),
            activeColor: Color(0xffd688b0),
            inactiveColor: Color(0xFF448AFF),
          ),
          
        ],
      ),
    );
  }
}