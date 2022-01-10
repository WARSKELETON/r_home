import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/presentation/core/home_details_text_widget.dart';
import 'package:r_home/presentation/core/image_and_details_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/select_home_card_widget.dart';

class SelectHomeField extends StatelessWidget {
  const SelectHomeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        final _homes = context.watch<RentAHomeBloc>().state.homes;
        final _home = context.watch<RentAHomeBloc>().state.selectedHome;

        if (_home.name == "") {
          return Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: _homes.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return SelectHomeCardWidget(home: _homes[index]);
              },
              separatorBuilder: (BuildContext context, int index) => const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Divider(
                  color: Colors.grey,
                  height: 10,
                ),
              ),
            )
          );
        } else {
          return Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageAndDetailsWidget(image: AssetImage("assets/icons/home3.png")),
                  HomeDetailsTextWidget(home: _home)
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
