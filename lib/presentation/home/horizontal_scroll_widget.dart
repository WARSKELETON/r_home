import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/flat_rounded_button_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalScrollWidget extends StatelessWidget {
  final String title;
  final List<int> items;

  const HorizontalScrollWidget(
      {Key? key, required this.title, required this.items})
      : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: RoundedCardWidget(
          title: "Serra de Sintra",
          subtitle: "50 Km",
          image: "assets/icons/home${index+1}.png",
          width: 150,
          height: 150,
          onPressed: () => {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 9.0, left: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  FlatRoundedButtonWidget(
                    text: "see all",
                    onPressed: () => AutoRouter.of(context).push(const MyHomesPageRoute()),
                    backgroundColor: Color.fromRGBO(Theme.of(context).colorScheme.primaryBlue.red, Theme.of(context).colorScheme.primaryBlue.green, Theme.of(context).colorScheme.primaryBlue.blue, 0.13),
                    textColor: Theme.of(context).colorScheme.primaryBlue,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 25,
                    width: 85,
                    trailingIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xff185e8b),
                      size: 14,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: _itemBuilder
              ),
            ),
          ],
        ),
      ),
    );
  }
}
