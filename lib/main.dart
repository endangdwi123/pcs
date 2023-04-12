import 'package:flutter/material.dart';
import 'package:pcs/firstscreen.dart';
import 'package:pcs/fourthscreen.dart';
import 'package:pcs/secondscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/fourth':(context) => FourthScreen(),
      
      },
    );
  }
}