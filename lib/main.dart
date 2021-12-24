import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import "theme/custom_theme.dart";
import "home.dart";
import "models/models.dart";

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
