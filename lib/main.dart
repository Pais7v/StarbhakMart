import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/SplashScreen.dart';
import 'package:flutter_assessment/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



@override
Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  );
}
}
@override
Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Nav(),
  );
}