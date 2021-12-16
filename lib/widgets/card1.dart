import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/main.dart';

import "../theme/custom_theme.dart";

class Card1 extends StatelessWidget {
  final String category = "Editor's Choice";
  final String title = "The Art of Dough";
  final String description = "Learn to make the perfect bread.";
  final String chef = "Ray Wenderlich";

  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 425,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag1.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: CustomTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: CustomTheme.darkTextTheme.headline5,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: CustomTheme.darkTextTheme.bodyText1,
              ),
              bottom: 20,
              right: 5,
            ),
            Positioned(
              child: Text(
                chef,
                style: CustomTheme.darkTextTheme.bodyText1,
              ),
              bottom: 0,
              right: 5,
            ),
          ],
        ),
      ),
    );
  }
}
