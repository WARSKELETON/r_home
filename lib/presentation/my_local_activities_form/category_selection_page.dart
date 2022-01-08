import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_text_card_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/my_local_activities_form.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Add a new Activity"
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: GridView.count(
          childAspectRatio: MediaQuery.of(context).size.width * 1.7 /
                (MediaQuery.of(context).size.height),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          children: List.generate(5, (index) => 
            RoundedTextCardWidget(
              text: "Culture",
              image: "assets/icons/food${index%2}.png",
              onPressed: () => AutoRouter.of(context).push(MyLocalActivitiesFormRoute()),
            )
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
