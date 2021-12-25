import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/screens/grocery_item_screen.dart';
import "empty_grocery_screen.dart";
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final groceryManager = context.read<GroceryManager>();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroceryItemScreen(
                onCreate: (item) {
                  groceryManager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item) {},
              ),
            ),
          );
        },
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
          return Container();
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
