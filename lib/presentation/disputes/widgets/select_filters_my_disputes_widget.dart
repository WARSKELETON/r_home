import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/list_filter/list_filter_bloc.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';

class SelectFiltersMyDisputesWidget extends StatelessWidget {
  const SelectFiltersMyDisputesWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      alignment: WrapAlignment.center,
      children: <Widget>[
        ChipWidget(
          width: 115,
          title: "OPENED",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isOpened,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleOpened()),
        ),
        ChipWidget(
          width: 115,
          title: "CLOSED",
          isClickable: true,
          isChecked: context.watch<ListFilterBloc>().state.isClosed,
          onPressed: () => context.read<ListFilterBloc>().add(const ListFilterEvent.toggleClosed()),
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