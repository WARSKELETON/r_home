import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class SelectRentalWidget extends StatelessWidget {
  final List<Rental> rentals;
  final List<Home> homes;

  const SelectRentalWidget({Key? key, required this.rentals, required this.homes}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    final _user = context.read<AuthBloc>().state.user;
    final _home = homes.firstWhere((home) => home.uuid == rentals[index].homeId);
    return ListTile(
      title: Text(_home.name + " - " + (_user.id == _home.host ? "HOST" : "GUEST")),
      subtitle: Text(rentals[index].getDateString()),
      leading: Radio<String>(
        activeColor: Theme.of(context).colorScheme.primaryBlue,
        value: rentals[index].uuid,
        groupValue: context.watch<DisputesFormBloc>().state.dispute.rentalUuid,
        onChanged: (String? value) {
          context.read<DisputesFormBloc>().add(DisputesFormEvent.rentalChanged(value!));
          context.read<DisputesFormBloc>().add(DisputesFormEvent.homeChanged(rentals[index].homeId));
        },
      ),
      trailing: Image.network(_home.mainImageUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: rentals.isEmpty || homes.isEmpty ? 
      const Padding(
        padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
        child: Text(
          "You cannot open a dispute since you haven't rented a home yet.",
          textAlign: TextAlign.center,
        ),
      )
       : ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        itemCount: rentals.length,
        itemBuilder: _itemBuilder
      ),
    );
  }
}
