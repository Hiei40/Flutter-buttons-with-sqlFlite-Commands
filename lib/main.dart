import 'package:flutter/material.dart';
import 'package:untitled3/Home.dart';






void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo',
      home:Home(),

    );
  }
}
