import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical_test_2/screen/home/view.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
    },
  ),);
}