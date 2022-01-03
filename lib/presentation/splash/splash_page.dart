import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
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
            onPressed: () => {},
          ),
        ],
      ),
      body: const Center(
        child: Text("splash cona"),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
