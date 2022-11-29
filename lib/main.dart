import 'package:flutter/material.dart';
import 'package:flutter_ecomtest/Screen/home.dart';
import 'package:flutter_ecomtest/component/product.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: homescreen()
        home: product());
  }
}
