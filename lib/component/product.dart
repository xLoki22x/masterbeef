import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecomtest/component/imgcontroller.dart';
import 'package:flutter_ecomtest/component/masterProduct.dart';
import 'package:flutter_ecomtest/component/navber.dart';
import 'package:flutter_ecomtest/component/search.dart';
import 'package:flutter_ecomtest/component/setting.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class product extends StatefulWidget {

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  int selectedIndex = 0;

  List screens = [
    ScreenMovies(),
    ScreenReleases(),
    ScreenCuriosities(),
    Screensetting()
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: screens.elementAt(selectedIndex),
        ),
        // drawer: Navber(),
        bottomNavigationBar: BottomMenu(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}

class ScreenMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(width: 20.0, height: 100.0),
                    const Text(
                      'ความสุกของ =',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    const SizedBox(width: 20.0, height: 100.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'Canterbury',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('ลูกค้า'),
                          RotateAnimatedText('เนื้อเรา'),
                        ],
                        stopPauseOnTap: false,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: imgcontroller(),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: masterproduct(),
          ),
        ),
      ],
    );
  }
}

class ScreenReleases extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {},
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}

class ScreenCuriosities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('favolist'));
  }
}

class Screensetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Setting();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: product(),
    );
  }
}
