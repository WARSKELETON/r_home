import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyHomeWidget extends StatelessWidget {
  final Home home;

  const MyHomeWidget({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: RoundedCardWidget(
        title: home.name,
        subtitle: home.host,
        image: "assets/icons/home3.png",
        width: MediaQuery.of(context).size.width,
        height: 200,
        onPressed: () => AutoRouter.of(context).push(MyHomePageRoute(home: home)),
      ),
    );
  }
}