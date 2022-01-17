import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/core/flat_rounded_button_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/home/widgets/horizontal_guest_widget.dart';
import 'package:r_home/presentation/home/widgets/horizontal_host_widget.dart';
import 'package:r_home/presentation/home/widgets/horizontal_producer_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalScrollWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final bool? isExplore;

  const HorizontalScrollWidget({Key? key, required this.title, this.onPressed, this.isExplore})
      : super(key: key);

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
                    child: Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  FlatRoundedButtonWidget(
                    text: "see all",
                    onPressed: onPressed,
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .primaryBlue
                        .withOpacity(0.13),
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
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                final currentUser = context.watch<AuthBloc>().state.user;

                if (currentUser.role == "host") {
                  return const HorizontalHostWidget();
                } else if (currentUser.role == "guest") {
                  if (isExplore != null) {
                    return const HorizontalGuestWidget(isExplore: true);
                  } else {
                    return const HorizontalGuestWidget();
                  }
                } else {
                  return const HorizontalProducerWidget();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
