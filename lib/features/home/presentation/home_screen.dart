import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text("Add Deck"),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person_sharp),
            iconSize: 30.0,
            onPressed: () {},
          ),
          const Icon(
            Icons.settings,
            size: 30.0,
          ),
        ],
      ),
      body: Container(),
    );
  }
}
