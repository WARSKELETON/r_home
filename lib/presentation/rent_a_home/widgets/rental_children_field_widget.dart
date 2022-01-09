import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/presentation/core/circle_icon_button_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class RentalChildrenField extends StatelessWidget {
  const RentalChildrenField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        int numChildren = context.watch<RentAHomeBloc>().state.idealRental.numChildren;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Children", style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleIconButtonWidget(
                    onPressed: () => context.read<RentAHomeBloc>().add(const RentAHomeEvent.childrenRemove(1)),
                    icon: const Icon(Icons.remove, color: Colors.white),
                    backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                    splashColor: Colors.black,
                    disabled: numChildren == 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(width: 30, child: Text(numChildren.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 20),)),
                  ),
                  CircleIconButtonWidget(
                    onPressed: () => context.read<RentAHomeBloc>().add(const RentAHomeEvent.childrenAdd(1)),
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