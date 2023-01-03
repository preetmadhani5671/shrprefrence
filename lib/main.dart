import 'package:flutter/material.dart';
import 'package:shrprefrence/screen/homeScreen/view/homeScreen.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}