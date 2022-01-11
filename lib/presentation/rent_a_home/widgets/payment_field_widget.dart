import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/r_home_icon_icons.dart';

class PaymentField extends StatelessWidget {
  const PaymentField({Key? key}) : super(key: key);

  int nightsBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  double totalPrice(int nights, double pricePerNight, int singleFee) {
    return (nights * pricePerNight) + singleFee;
  }

  List<Widget> paymentInfoWidgets(BuildContext context) {
    int nights = nightsBetween(context.read<RentAHomeBloc>().state.checkIn!, context.read<RentAHomeBloc>().state.checkOut!);
    double price = context.read<RentAHomeBloc>().state.selectedHome.price;

    return [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
        child: Text(
          "Total Price",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Number of Nights",
              style: TextStyle(
              fontSize: 16
            )),
            Text(
              nights.toString(),
              style: const TextStyle(
              fontSize: 16
          ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Price per Night",
              style: TextStyle(
              fontSize: 16
            )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    price.toString(),
                    style: const TextStyle(
                        fontSize: 16
                    )
                  ),
                ),
                const Icon(RHomeIcon.token)
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Single Fee",
              style: TextStyle(
              fontSize: 16
            )),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 16
                    )
                  ),
                ),
                Icon(RHomeIcon.token)
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Total",
              style: TextStyle(
              fontSize: 16
            )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    totalPrice(nights, price, 3).toString(),
                    style: const TextStyle(
                        fontSize: 16
                    )
                  ),
                ),
                Icon(RHomeIcon.token)
              ],
            )
          ],
        ),
      )
    ];
  }

  List<Widget> paymentMethodsWidgets() {
    return [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text(
          "Payment Method",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: PaymentMethod.values.length,
          itemBuilder: _itemBuilder
        ),
      )
    ];
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(PaymentMethod.values[index].name.capitalize()),
      leading: Radio<String>(
        activeColor: Theme.of(context).colorScheme.primaryBlue,
        value: PaymentMethod.values[index].name,
        groupValue: context.watch<RentAHomeBloc>().state.idealRental.paymentMethod,
        onChanged: (String? value) {
          context.read<RentAHomeBloc>().add(RentAHomeEvent.paymentMethodChanged(value!));
        },
      ),
      trailing: SvgPicture.asset(
        'assets/icons/${PaymentMethod.values[index].name}.svg',
        width: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...paymentInfoWidgets(context),
              ...paymentMethodsWidgets()
            ],
          ),
        );
      },
    );
  }
}