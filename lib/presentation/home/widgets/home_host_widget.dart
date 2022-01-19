import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class HomeHostWidget extends StatelessWidget {
  const HomeHostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomesBloc, HomesState>(
      builder: (context, state) {
        final homes = context.watch<HomesBloc>().state.homes;

        return Column(
          children: [
            if (homes.isEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1580440174847-8eef6e5beb72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
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
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Do you have a home to rent?",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            transform: Matrix4.translation(vector.Vector3(0, 25, 0)),
                            child: RoundedButtonWidget(
                              text: 'Place Home',
                              onPressed: null, //() => context.read<StepperBloc>().add(const StepperEvent.decrementIndex()),
                              backgroundColor: Colors.white,
                              fontWeight: FontWeight.w400,
                              textColor: Theme.of(context).colorScheme.primaryBlue,
                              fontSize: 17,
                              height: 45,
                              width: 140,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              )
            ] else ...[
              SizedBox(
                height: 275,
                child: HorizontalScrollWidget(
                  title: "My Homes",
                  onPressed: () =>
                      AutoRouter.of(context).push(HomesPageRoute())
                  )
                ),
            ]
          ],
        );
      },
    );
  }
}
