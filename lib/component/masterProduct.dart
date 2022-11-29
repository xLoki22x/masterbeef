import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecomtest/component/imgcontroller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_ecomtest/component/setting.dart';

class masterproduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyHomePage(
                    title: '',
                  );
                }));
              },
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.shopify,
                    size: 60,
                  ),
                  elevation: 50,
                  shadowColor: Colors.black,
                ),
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 50,
                child: Icon(
                  Icons.delivery_dining_outlined,
                  size: 60,
                ),
                shadowColor: Colors.black,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 60,
                ),
                elevation: 50,
                shadowColor: Colors.black,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 50,
                child: Icon(
                  Icons.add_alert_rounded,
                  size: 60,
                ),
                shadowColor: Colors.black,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 50,
                child: Icon(
                  Icons.add,
                  size: 60,
                ),
                shadowColor: Colors.black,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 50,
                child: Icon(
                  Icons.settings,
                  size: 60,
                ),
                shadowColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
