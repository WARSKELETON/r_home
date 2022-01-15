import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/homes/widgets/home_widget.dart';

class MyActivityHomesWidget extends StatelessWidget {
  const MyActivityHomesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomesBloc, HomesState>(
      builder: (context, state) {
        final _homes = context.watch<HomesBloc>().state.homes;

        if (_homes.isNotEmpty) {
          return Center(
              child: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: _homes.length,
            itemBuilder: (BuildContext ctxt, int index) {
              final _rental = Rental.empty();
              return HomeWidget(home: _homes[index], rental: _rental, booked: _rental.homeId != "");
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Divider(
                color: Colors.grey,
                height: 10,
              ),
            ),
          ));
        } else {
          return const Center(
            child: Text("No Homes are associated with this activity."),
          );
        }
      },
    );
  }
}
