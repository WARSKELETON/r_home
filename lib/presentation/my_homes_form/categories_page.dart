import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_text_card_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class CategoriesPage extends StatelessWidget implements AutoRouteWrapper {
  final MyHomesFormBloc myHomesFormBloc;

  const CategoriesPage({Key? key, required this.myHomesFormBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Associating Activity"),
      body: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.width * 1.7 / (MediaQuery.of(context).size.height),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: List.generate(ActivityCategory.values.length, (index) =>
          RoundedTextCardWidget(
            text: ActivityCategory.values[index].name.replaceAll("_", " ").capitalize(),
            image: "assets/icons/${ActivityCategory.values[index].name}.png",
            onPressed: () => {
              context.read<MyHomesFormBloc>().add(MyHomesFormEvent.categoryChanged(ActivityCategory.values[index])),
              AutoRouter.of(context).push(LocalActivitiesPageRoute(myHomesFormBloc: BlocProvider.of<MyHomesFormBloc>(context))),
            }
          )
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: myHomesFormBloc, 
      child: this
    );
  }
}