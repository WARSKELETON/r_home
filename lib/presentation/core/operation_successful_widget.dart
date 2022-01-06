import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';

class OperationSuccessfulWidget extends StatelessWidget {
  final String? title;
  final String? buttonText;
  final void Function()? onPressed;

  const OperationSuccessfulWidget({Key? key, this.title, this.buttonText, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) ...[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title!),
          ),
        ],
        Padding(
          padding: const EdgeInsets.all(70.0),
          child: SvgPicture.asset('assets/icons/success.svg',
              width: 150,
          ),
        ),
        if (title != null && onPressed != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: RoundedButtonWidget(
              text: buttonText!,
              onPressed: () => onPressed,
              backgroundColor: Theme.of(context).colorScheme.primaryBlue,
              textColor: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 18,
              width: 200,
              height: 50
            ),
          )
        ],
      ],
    );
  }
}
