import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecomtest/Screen/login.dart';
import 'package:flutter_ecomtest/component/navber.dart';
import 'package:flutter_ecomtest/component/product.dart';
import 'regisiter.dart';

class homescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registered/Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 400, 10, 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return resiterscreen();
                      }));
                    },
                    icon: Icon(Icons.add),
                    label: Text('Register', style: TextStyle(fontSize: 20))),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return product();
                        },
                      ));
                    },
                    icon: Icon(Icons.login),
                    label: Text('login', style: TextStyle(fontSize: 20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
