import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';

class SelectHomeCardWidget extends StatelessWidget {
  final Home home;

  const SelectHomeCardWidget({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Home selectedHome = context.read<RentAHomeBloc>().state.selectedHome;

    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 250,
          child: RoundedCardWidget(
            title: home.name,
            subtitle: home.host,
            image: "assets/icons/home3.png",
            width: MediaQuery.of(context).size.width,
            height: 200,
            selected: selectedHome.uuid == home.uuid,
            onPressed: () {
              if (selectedHome.uuid != home.uuid) {
                context.read<RentAHomeBloc>().add(RentAHomeEvent.homeChanged(home));
              } else {
                context.read<RentAHomeBloc>().add(RentAHomeEvent.homeChanged(Home.empty()));
              }
            },
          ),
        );
      },
    );
  }
}
