import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("R-HOME"),
        foregroundColor: Colors.grey[600],
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        actions: [
          IconButton(
            splashRadius: 20.0,
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("cona"),
      ),
    );
  }
}