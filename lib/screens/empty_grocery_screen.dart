import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_fooderlich_app/models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset("assets/fooderlich_assets/empty_list.png"),
            )),
            const Text("No groceries", style: TextStyle(fontSize: 21.0)),
            const SizedBox(height: 16.0),
            const Text(
              "Shopping for ingredients?\nTap the + button to write them down",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8.0,
            ),
            MaterialButton(
                textColor: Colors.white,
                child: const Text("Browse Recipes"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green,
                onPressed: () => {
                      // TODO: update user's selected tab
                    })
          ],
        ),
      ),
    );
  }
}
