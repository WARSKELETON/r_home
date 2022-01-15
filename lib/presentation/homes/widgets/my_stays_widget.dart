import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/homes/widgets/home_widget.dart';

class MyStaysWidget extends StatelessWidget {
  const MyStaysWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomesBloc, HomesState>(
      builder: (context, state) {
        final _rentals = context.watch<HomesBloc>().state.rentals;
        final _homes = context.watch<HomesBloc>().state.homes;

        if (_homes.isNotEmpty) {
          return Center(
              child: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: _rentals.length,
            itemBuilder: (BuildContext ctxt, int index) {
              final _home = _homes.firstWhere(
                  (home) => home.uuid == _rentals[index].homeId);
              return HomeWidget(rental: _rentals[index], home: _home, booked: _rentals[index].isRentalActive(DateTime.now()));
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
        } else if (_homes.isEmpty && _rentals.isNotEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text("No Stays were found."),
          );
        }
      },
    );
  }
}
