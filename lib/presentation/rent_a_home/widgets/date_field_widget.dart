import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class DateField extends StatelessWidget {
  const DateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        DateTime? initialCheckIn = context.read<RentAHomeBloc>().state.checkIn;
        DateTime? initialCheckOut = context.read<RentAHomeBloc>().state.checkOut;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfDateRangePicker(
            startRangeSelectionColor: Theme.of(context).colorScheme.primaryBlue,
            endRangeSelectionColor: Theme.of(context).colorScheme.primaryBlue,
            todayHighlightColor: Theme.of(context).colorScheme.primaryBlue,
            rangeSelectionColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2),
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.range,
            enablePastDates: false,
            initialSelectedRange: PickerDateRange(initialCheckIn, initialCheckOut),
            onSelectionChanged: (DateRangePickerSelectionChangedArgs date) {
              if (date.value is PickerDateRange) {
                final DateTime? rangeStartDate = date.value.startDate;
                final DateTime? rangeEndDate = date.value.endDate;
                context.read<RentAHomeBloc>().add(RentAHomeEvent.checkInChanged(rangeStartDate));
                context.read<RentAHomeBloc>().add(RentAHomeEvent.checkOutChanged(rangeEndDate));
              }
            },
          ),
        );
      },
    );
  }
}