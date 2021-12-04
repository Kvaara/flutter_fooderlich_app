import 'package:flutter/material.dart';

import 'author_card.dart';
import 'theme/custom_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag5.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: "Mike Katz",
              title: "Smoothie Connoisseur",
              imageProvider: AssetImage("assets/author_katz.jpeg"),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      "Recipe",
                      style: CustomTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 18,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Smoothies",
                        style: CustomTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Stack(
            //   children: const [
            //     Text("Smoothie"),
            //     Text("Recipe"),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
