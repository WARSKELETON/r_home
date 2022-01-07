import 'package:flutter/material.dart';
import 'package:r_home/presentation/my_homes/widgets/adults_field_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/children_field_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/pets_field_widget.dart';

class GuestsField extends StatelessWidget {
  const GuestsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("How many guests are allowed?", style: TextStyle(fontSize: 18, color: Colors.grey)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: AdultsField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: ChildrenField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: PetsField(),
          )
        ],
      ),
    );
  }
}