import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/addition_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class CarouselWidget extends StatelessWidget {
  final String title;
  final List<LocalActivity> localActivities;

  const CarouselWidget({Key? key, required this.title, required this.localActivities}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
        child: BlocBuilder<MyHomesFormBloc, MyHomesFormState>(
          builder: (context, state) {
            final location = context.watch<MyHomesFormBloc>().state.home.location;

            return AdditionCardWidget(
              title: "Add Activity",
              width: 100,
              height: 100,
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () => AutoRouter.of(context).push(CategoriesPageRoute(myHomesFormBloc: BlocProvider.of<MyHomesFormBloc>(context))),
              disabled: location == "",
            );
          },
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
      child: RoundedCardWidget(
          title: localActivities[index-1].name,
          image: "assets/icons/home${index+1}.png",
          width: 100,
          height: 100,
          onPressed: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 8,
            height: 40,
            color: Color(0xFFE5E5E5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: localActivities.length + 1,
              itemBuilder: _itemBuilder
            ),
          ),
        ],
      ),
    );
  }
}