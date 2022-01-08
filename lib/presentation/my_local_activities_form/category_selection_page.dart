import 'package:flutter/material.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/presentation/core/rounded_text_card_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.width * 1.7 /
              (MediaQuery.of(context).size.height),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: List.generate(ActivityCategory.values.length, (index) => 
          RoundedTextCardWidget(
            text: ActivityCategory.values[index].name.replaceAll("_", " ").capitalize(),            
            image: "assets/icons/food${index%2}.png",
            selected: context.watch<MyLocalActivitiesFormBloc>().state.category == ActivityCategory.values[index],
            onPressed: () {
              if (context.read<MyLocalActivitiesFormBloc>().state.category != ActivityCategory.values[index]) {
                context.read<MyLocalActivitiesFormBloc>().add(MyLocalActivitiesFormEvent.categoryChanged(ActivityCategory.values[index]));
              } else {
                context.read<MyLocalActivitiesFormBloc>().add(const MyLocalActivitiesFormEvent.categoryChanged(null));
              }
            },
          )
        ),
      ),
    );
  }
}
