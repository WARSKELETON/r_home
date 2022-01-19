import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class HomeWelcomeWidget extends StatelessWidget {
  final String title;
  final String buttonText;
  final String imageAsset;
  final Function() onPressed;

  const HomeWelcomeWidget({Key? key, required this.title, required this.buttonText, required this.imageAsset, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 840 / MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: AspectRatio(
                      aspectRatio: 840 / MediaQuery.of(context).size.height * 0.7,
                      child: Image.asset(
                        imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent,
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 15, right: 16, bottom: 12),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ]
              ),
            ),
            Container(
              transform: Matrix4.translation(vector.Vector3(0, -25, 0)),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primaryBlue,
                        width: 2
                      )
                    ),
                  ),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                      return states.contains(MaterialState.pressed)
                          ? Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2)
                          : null;
                  }),
                  fixedSize: MaterialStateProperty.all<Size>(const Size(160, 45))
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                ),
                onPressed: onPressed
              ),
            )
          ],
        ),
      ),
    );
  }
}
