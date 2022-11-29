import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';

class imgcontroller extends StatefulWidget {

  @override
  State<imgcontroller> createState() => _imgcontrollerState();
}

final List<String> imageList = [
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
  "https://lh6.googleusercontent.com/-80y6vueQDXw/U4PtnbIIINI/AAAAAAAAADo/cZKxN4TyrvY/w621-h498-no/%25E0%25B9%2580%25E0%25B8%2599%25E0%25B8%25B7%25E0%25B9%2589%25E0%25B8%25AD%25E0%25B8%25A1%25E0%25B8%25B1%25E0%25B8%2595%25E0%25B8%25AA%25E0%25B8%25B6%25E0%25B8%258B%25E0%25B8%25B2%25E0%25B8%2581%25E0%25B8%25B0.jpg",
];

class _imgcontrollerState extends State<imgcontroller> {
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      height: 180.0,
      enlargeMainPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.8,
      items: imageList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
            ),
          );
        },
      ).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
  }
}
