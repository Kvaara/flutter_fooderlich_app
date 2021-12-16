import 'package:flutter/material.dart';

import '/api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  final MockFooderlichService mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Explore Screen"),
    );
  }
}
