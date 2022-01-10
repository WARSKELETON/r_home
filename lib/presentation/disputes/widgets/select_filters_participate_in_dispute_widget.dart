import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/list_filter/list_filter_bloc.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';

class SelectFiltersParticipateInDisputeWidget extends StatelessWidget {
  const SelectFiltersParticipateInDisputeWidget({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      alignment: WrapAlignment.center,
      children: <Widget>[
        ChipWidget(
          width: 100,
          title: "VOTED",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isVotedActive,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleVoted()),
        ),
        ChipWidget(
          width: 140,
          title: "NOT VOTED",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isNotVotedActive,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleNotVoted()),
        ),
        ChipWidget(
          width: 230,
          title: "DAMAGES IN PROPERTIES",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isDamagesActive,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleDamages()),
        ),
        ChipWidget(
          width: 130,
          title: "FALSE ADS",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isFalseAdsActive,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleFalseAds()),
        ),
      ],
    );
  }
}