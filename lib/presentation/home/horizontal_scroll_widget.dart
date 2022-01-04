import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';

class HorizontalScrollWidget extends StatelessWidget {
  final String buttonText;
  final String? subtitle;
  final List<int> items;

  const HorizontalScrollWidget(
      {Key? key, required this.buttonText, this.subtitle, required this.items})
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
          opacity: 0.9),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 10,
            ),
            // RoundedButtonWidget(
            //   text: buttonText,
            //   onPressed: () => {},
            //   backgroundColor: Colors.black,
            //   textColor: Colors.white,
            //   fontWeight: FontWeight.w400,
            //   fontSize: 20,
            //   height: 35,
            //   width: 310,
            //   trailingIcon: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
            // ),
            if (subtitle != null) ...[
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Text(
                  subtitle!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                ),
              )
            ],
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
