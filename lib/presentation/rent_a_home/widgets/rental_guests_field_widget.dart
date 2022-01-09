import 'package:flutter/material.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_adults_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_children_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_pets_field_widget.dart';

class RentalGuestsField extends StatelessWidget {
  const RentalGuestsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: RentalAdultsField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: RentalChildrenField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: RentalPetsField(),
          )
        ],
      ),
    );
  }
}