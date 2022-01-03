import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
            onPressed: () => AutoRouter.of(context).push(const TestPageRoute()),
          ),
        ],
      ),
      body: const Center(
        child: Text("cona"),
      ),
    );
  }
}