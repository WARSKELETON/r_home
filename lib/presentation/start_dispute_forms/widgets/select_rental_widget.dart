import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';

class SelectRentalWidget extends StatelessWidget {
  final List<Rental> rentals;
  final List<Home> homes;

  const SelectRentalWidget({Key? key, required this.rentals, required this.homes}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    final _user = context.read<AuthBloc>().state.user;
    return ListTile(
      title: Text(homes.firstWhere((home) => home.uuid == rentals[index].homeId).name + " - " + (_user.id == homes.firstWhere((home) => home.uuid == rentals[index].homeId).host ? "HOST" : "GUEST")),
      subtitle: Text(rentals[index].getDateString()),
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
