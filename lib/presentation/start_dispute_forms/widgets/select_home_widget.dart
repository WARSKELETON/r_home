import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/domain/rentals/rental.dart';

class SelectHomeWidget extends StatelessWidget {
  final List<Rental> rentals; // List<Rental>

  const SelectHomeWidget({
    Key? key,
    required this.rentals,
  }) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text("Rental ${rentals[index].uuid}"),
      subtitle: const Text("12/01/2022 to 17/01/2022\nHost X"),
      isThreeLine: true,
      leading: Radio<String>(
        value: rentals[index].uuid,
        groupValue: context.watch<DisputesFormBloc>().state.dispute.rentalUuid,
        onChanged: (String? value) {
          context.read<DisputesFormBloc>().add(DisputesFormEvent.rentalChanged(value!));
          context.read<DisputesFormBloc>().add(DisputesFormEvent.homeChanged(rentals[index].homeId));
        },
      ),
      trailing: Image.asset("assets/icons/home3.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        itemCount: rentals.length,
        itemBuilder: _itemBuilder
      ),
    );
  }
}
