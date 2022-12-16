import 'package:chatty_app/pages/homepages.dart';
import 'package:flutter/material.dart';
import 'pages/homepages.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatty',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
    );
  }
}
