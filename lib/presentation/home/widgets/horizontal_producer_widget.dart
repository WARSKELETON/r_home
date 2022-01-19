import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/my_local_activities/my_local_activities_bloc.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalProducerWidget extends StatelessWidget {
  const HorizontalProducerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MyLocalActivitiesBloc, MyLocalActivitiesState>(
        builder: (context, state) {
          final _localActivities = context.watch<MyLocalActivitiesBloc>().state.localActivities;

          if (_localActivities.isNotEmpty) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _localActivities.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child: RoundedCardWidget(
                    title: _localActivities[index].name,
                    subtitle: _localActivities[index].location,
                    image: _localActivities[index].mainImageUrl,
                    network: true,
                    width: 155,
                    height: 155,
                    onPressed: () => AutoRouter.of(context).push(
                        MyLocalActivityDetailsPageRoute(localActivityUuid: _localActivities[index].uuid)),
                  ),
                );
              });
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child: RoundedCardWidget(
                    title: "No Activities found",
                    center: false,
                    image: "assets/icons/home${1}.png",
                    width: 155,
                    height: 155,
                    onPressed: () => {},
                  ),
                );
              });
          }
        },
      )
    );
  }
}
