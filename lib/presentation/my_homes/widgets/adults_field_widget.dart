import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/presentation/core/circle_icon_button_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class AdultsField extends StatelessWidget {
  const AdultsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
      },
      builder: (context, state) {
        int maxAdults = context.watch<MyHomesFormBloc>().state.home.maxAdults;

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
                    onPressed: () => context.read<MyHomesFormBloc>().add(const MyHomesFormEvent.adultsRemove(1)),
                    icon: const Icon(Icons.remove, color: Colors.white),
                    backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                    splashColor: Colors.black,
                    disabled: maxAdults == 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(width: 30, child: Text(maxAdults.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 20),)),
                  ),
                  CircleIconButtonWidget(
                    onPressed: () => context.read<MyHomesFormBloc>().add(const MyHomesFormEvent.adultsAdd(1)),
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