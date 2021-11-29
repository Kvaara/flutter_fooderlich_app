import 'package:flutter/material.dart';

import "theme/custom_theme.dart";

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Apply Home widget
    final ThemeData theme = CustomTheme.dark();

    return MaterialApp(
      theme: theme,
      darkTheme: CustomTheme.dark(),
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text(
            'Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
