import 'package:desktopeggs/Pages/dashboard.dart';
import 'package:desktopeggs/Pages/forgot_pw_page.dart';
import 'package:desktopeggs/Pages/login_page.dart';
import 'package:desktopeggs/main.dart';

import '/Auth/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/MyNevBar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  MainView();
          } else {
            return  AuthPage();
          }
        },
      ),
    );
  }
}
