import 'package:flutter/material.dart';
import 'ThreeDListView.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "3D ListView",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new ThreeDListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}