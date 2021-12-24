import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import "empty_grocery_screen.dart";
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          // return GroceryListScreen(manager: manager);
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
