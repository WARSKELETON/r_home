import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class InfoMessageWidget extends StatelessWidget {
  const InfoMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width - 70,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Theme.of(context).colorScheme.primaryBlue,
          ),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.warning,
                color: Colors.orange[800],
                size: 36.0,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Tokens spent to start the dispute will be refunded upon resolution. If you spend more tokens, the probability of providing more confidence to the users increase. In this case, your dispute is more likely to be voted.",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primaryBlue,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
