import 'package:flutter/material.dart';

class ConfirmationDialogWidget extends StatelessWidget {
  final String action1;
  final String action2;
  final String message;
  final Function() onPressed;

  const ConfirmationDialogWidget({Key? key, required this.action1, required this.action2, required this.message, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                left: 25, top: 30, right: 25, bottom: 5.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  "CONFIRMATION",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Text(message,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center),
                const SizedBox(height: 22),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            action1,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.red),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: onPressed,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            action2,
                            style: const TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      )
    );
  }
}
