import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';

class SelectHomeCardWidget extends StatelessWidget {
  final Home home;

  const SelectHomeCardWidget({Key? key, required this.home}) : super(key: key);

  Widget _buildDetailsRow(String leadingText, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            leadingText,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Home selectedHome = context.read<RentAHomeBloc>().state.selectedHome;

    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        return RoundedCardWidget(
          title: home.name,
          titleFontSize: 16,
          center: false,
          details: [
            _buildDetailsRow("Location: ", home.location),
            _buildDetailsRow(
                "Price: ", home.price.toString() + " tokens/night"),
            _buildDetailsRow(
                "Local Activities: ",
                home.localActivities.length.toString() +
                    " host recommendations")
          ],
          image: home.mainImageUrl,
          network: true,
          width: MediaQuery.of(context).size.width,
          height: 200,
          onPressed: () {
            if (selectedHome.uuid != home.uuid) {
              context
                  .read<RentAHomeBloc>()
                  .add(RentAHomeEvent.homeChanged(home));
            } else {
              context
                  .read<RentAHomeBloc>()
                  .add(RentAHomeEvent.homeChanged(Home.empty()));
            }
          },
        );
      },
    );
  }
}
