import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desktopeggs/Pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:side_navigation/side_navigation.dart';
import './Pages/dashboard.dart';


FirebaseAuth auth = FirebaseAuth.instance;
signOut() async {
    await auth.signOut();
  }

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  /// Views to display
 
  final List<Widget> views =  [
  
    Dashboard(),

    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// You can use an AppBar if you want to
      //appBar: AppBar(
      //  title: const Text('App'),
      //),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF35537F),
        child: Icon(Icons.logout),
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
      ),
      // The row is needed to display the current view
      backgroundColor: Color(0xFF35537F),
      body: Row(
        children: [
          /// Pretty similar to the BottomNavigationBar!
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {setState(() {
                selectedIndex = index;
              });
            }
          ),
          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
