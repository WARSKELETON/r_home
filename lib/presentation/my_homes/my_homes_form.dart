import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';

class MyHomesForm extends StatelessWidget {
  const MyHomesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Add a new home",
        actions: [
          IconButton(
            onPressed: () => {}, 
            icon: const Icon(Icons.check),
            splashRadius: 20,
          )
        ],
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        )
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}