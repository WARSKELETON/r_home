import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';

class MyLocalActivitiesPage extends StatelessWidget {
  const MyLocalActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "My Activities",
        actions: [
          IconButton(
            onPressed: () => {}, 
            icon: const Icon(Icons.add),
            splashRadius: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: GridView.count(
          childAspectRatio: MediaQuery.of(context).size.width * 1.7 /
                (MediaQuery.of(context).size.height),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          children: List.generate(5, (index) => 
            RoundedCardWidget(
              title: "Serra de Sintra",
              subtitle: "50 Km",
              image: "assets/icons/food${index%2}.png",
              width: 160,
              height: 160,
              onPressed: () => {},
            )
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
