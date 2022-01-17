import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalHostWidget extends StatelessWidget {
  const HorizontalHostWidget({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomesBloc, HomesState>(
        builder: (context, state) {
          final homes = context.watch<HomesBloc>().state.homes;
          final rentals = context.watch<HomesBloc>().state.rentals;

          if (homes.isNotEmpty) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: homes.length,
              itemBuilder: (BuildContext context, int index) {
                final _rental = rentals.firstWhere((rental) => rental.homeId == homes[index].uuid, orElse: Rental.empty);
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 10.0, right: 10.0),
                  child: RoundedCardWidget(
                    title: homes[index].name,
                    subtitle: homes[index].location,
                    image: "assets/icons/home${1}.png",
                    width: 155,
                    height: 155,
                    onPressed: () => AutoRouter.of(context).push(HomeDetailsPageRoute(homeUuid: homes[index].uuid, rentalUuid: _rental.homeId == "" ? "" : _rental.uuid)),
                  ),
                );
              });
          } else {
            return Text("data");
          }
        },
      ),
    );
  }
}
