import 'package:flutter/material.dart';
import 'package:nestplay/home/home.dart';
import 'package:nestplay/login/login.dart';
import 'package:nestplay/profile/profile.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.pinkAccent[100],
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.black),
          headline2: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic,color: Colors.black),
          headline3: TextStyle(color: Colors.black,fontSize: 15),
          bodyText2: TextStyle(color: Colors.grey, fontSize: 12),
        )
    ),
    initialRoute: '/profile', routes: {
      //'/': (context) => Loading(),
      '/login': (context) => Login(),
      '/home': (context) => Home(),
      '/profile': (context) => Profile(),
      //'/location': (context) => ChooseLocation(),
    }));
