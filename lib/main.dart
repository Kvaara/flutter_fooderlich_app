import 'package:flutter/material.dart';

import "theme/custom_theme.dart";

import "home.dart";

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = CustomTheme.dark();

    return MaterialApp(
      theme: theme,
      darkTheme: CustomTheme.dark(),
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
