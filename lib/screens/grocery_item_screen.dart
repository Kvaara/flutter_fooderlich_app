import 'package:flutter/material.dart';

import '../models/models.dart';

class GroceryItemScreen extends StatelessWidget {
  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;

  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
