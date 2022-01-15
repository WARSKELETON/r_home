import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/list_filter/list_filter_bloc.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';

class FiltersWidget extends StatelessWidget {
  final bool opened;

  const FiltersWidget({Key? key, required this.opened}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      alignment: WrapAlignment.center,
      children: <Widget>[
        if (opened) ...[
          ChipWidget(
            width: 115,
            title: "OPENED",
            isClickable: true,
            isChecked: context.watch<ListFilterBloc>().state.isOpenedActive,
            onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleOpened()),
          ),
          ChipWidget(
            width: 115,
            title: "CLOSED",
            isClickable: true,
            isChecked: context.watch<ListFilterBloc>().state.isClosedActive,
            onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleClosed()),
          ),
        ] else ...[
          ChipWidget(
            width: 100,
            title: "VOTED",
            isClickable: true,
            isChecked: context.watch<ListFilterBloc>().state.isVotedActive,
            onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleVoted()),
          ),
          ChipWidget(
            width: 135,
            title: "NOT VOTED",
            isClickable: true,
            isChecked: context.watch<ListFilterBloc>().state.isNotVotedActive,
            onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleNotVoted()),
          ),
        ],
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