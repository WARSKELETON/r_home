import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class CarouselWidget extends StatelessWidget {
  final String title;
  final List<LocalActivity> localActivities;

  const CarouselWidget({Key? key, required this.title, required this.localActivities}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
      child: RoundedCardWidget(
          title: localActivities[index].name,
          image: localActivities[index].mainImageUrl,
          network: true,
          width: 100,
          height: 100,
          onPressed: () => AutoRouter.of(context).push(LocalActivityDetailsPageRoute(localActivityUuid: localActivities[index].uuid)),
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: localActivities.length,
              itemBuilder: _itemBuilder
            ),
          ),
        ],
      ),
    );
  }
}