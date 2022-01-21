import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class HomeWelcomeSmallWidget extends StatelessWidget {
  final String title;
  final String buttonText;
  final String imageAsset;
  final Function() onPressed;

  const HomeWelcomeSmallWidget({Key? key, required this.title, required this.buttonText, required this.imageAsset, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Container(
            height: 20,
            color: Theme.of(context).colorScheme.secondaryBlue,
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            height: 20,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        Padding(
        padding: const EdgeInsets.only(left: 9.0, right: 9.0, top: 10),
        child: AspectRatio(
          aspectRatio: 1.7,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: AspectRatio(
                  aspectRatio: 1.7,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          overlayColor: MaterialStateProperty.resolveWith((states) {
                              return states.contains(MaterialState.pressed)
                                  ? Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2)
                                  : null;
                          }),
                          fixedSize: MaterialStateProperty.all<Size>(const Size(150, 40))
                        ),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),
                        ),
                        onPressed: onPressed
                      ),
                    )
                  ],
                ),
              ),
            ]
          ),
        ),
      ),]
    );
  }
}
