import 'package:flutter/material.dart';

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
      ),
    );
  }
}
