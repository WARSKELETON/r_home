import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';

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
          height: 150),
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
                  RoundedButtonWidget(
                    text: "see all",
                    onPressed: () => {},
                    backgroundColor: const Color.fromRGBO(24, 94, 139, 0.13),
                    textColor: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    height: 25,
                    width: 85,
                    trailingIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 10,
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
