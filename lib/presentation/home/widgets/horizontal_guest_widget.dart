import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalGuestWidget extends StatelessWidget {
  final bool? isExplore;

  const HorizontalGuestWidget({Key? key, this.isExplore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationsRecommended = ["Alfama, Lisboa, Portugal", "Chiado, Lisboa, Portugal", "Alameda, Lisboa, Portugal", "Avenida da Liberdade, Lisboa, Portugal", "Sintra, Portugal", "Setúbal, Portugal"];
    
    if (isExplore != null) {
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: locationsRecommended.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 10.0, right: 10.0),
              child: RoundedCardWidget(
                title: locationsRecommended[index],
                image: "assets/icons/location${index + 1}.png",
                width: 155,
                height: 155,
                center: false,
                onPressed: () => AutoRouter.of(context).push(RentAHomePageRoute(location: locationsRecommended[index])),
              ),
            );
          }),
      );
    } else {
      return Expanded(
        child: BlocBuilder<HomesBloc, HomesState>(
          builder: (context, state) {
            final homes = context.watch<HomesBloc>().state.homes;
            final rentals = context.watch<HomesBloc>().state.rentals;

            if (homes.isNotEmpty && rentals.isNotEmpty) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: rentals.length,
                itemBuilder: (BuildContext context, int index) {
                  final _home = homes.firstWhere((home) =>
                      home.uuid == rentals[index].homeId);

                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0),
                    child: RoundedCardWidget(
                      title: _home.name,
                      subtitle: rentals[index].getDateString(),
                      image: _home.mainImageUrl,
                      network: true,
                      width: 155,
                      height: 155,
                      onPressed: () => AutoRouter.of(context).push(HomeDetailsPageRoute(homeUuid: _home.uuid, rentalUuid: rentals[index].homeId == "" ? "" : rentals[index].uuid)),
                    ),
                  );
                });
            } else {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0),
                    child: RoundedCardWidget(
                      title: "Home",
                      image: "assets/icons/home${1}.png",
                      width: 155,
                      height: 155,
                      onPressed: () => {},
                    ),
                  );
                });
            }
          }));
      }
    }
  }
