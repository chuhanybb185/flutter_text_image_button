import 'package:flutter/material.dart';
import 'package:text_image_button/button.dart';
import 'package:text_image_button/image.dart';
import 'package:text_image_button/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: ButtonDemo(),// ImageDemo(), //TextDemo(),
    );
  }
}

