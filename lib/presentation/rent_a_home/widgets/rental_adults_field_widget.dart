import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/presentation/core/circle_icon_button_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class RentalAdultsField extends StatelessWidget {
  const RentalAdultsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        int numAdults = context.watch<RentAHomeBloc>().state.idealRental.numAdults;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Adults", style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleIconButtonWidget(
                    onPressed: () => context.read<RentAHomeBloc>().add(const RentAHomeEvent.adultsRemove(1)),
                    icon: const Icon(Icons.remove, color: Colors.white),
                    backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                    splashColor: Colors.black,
                    disabled: numAdults == 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(width: 30, child: Text(numAdults.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 20),)),
                  ),
                  CircleIconButtonWidget(
                    onPressed: () => context.read<RentAHomeBloc>().add(const RentAHomeEvent.adultsAdd(1)),
                    icon: const Icon(Icons.add, color: Colors.white),
                    backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                    splashColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}