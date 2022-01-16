import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rent_location_field_widget.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        final locationsRecommended = ["Alfama, Lisboa, Portugal", "Chiado, Lisboa, Portugal", "Alameda, Lisboa, Portugal", "Avenida da Liberdade, Lisboa, Portugal", "Sintra, Portugal", "Setúbal, Portugal"];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RentLocationFieldWidget(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Recommended Places",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: MediaQuery.of(context).size.width * 1.7 / (MediaQuery.of(context).size.height),
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                children: List.generate(locationsRecommended.length, (index) => 
                  RoundedCardWidget(
                    title: locationsRecommended[index],
                    image: "assets/icons/location${index + 1}.png",
                    width: 140,
                    height: 140,
                    center: false,
                    onPressed: () => context.read<RentAHomeBloc>().add(RentAHomeEvent.locationChanged(locationsRecommended[index])),
                  )),
              ),
            ),
          ],
        );
      },
    );
  }
}
