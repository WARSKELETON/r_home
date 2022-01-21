import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/presentation/core/confirmation_dialog_widget.dart';

class ActivityDeletionDialog extends StatelessWidget {
  final LocalActivity localActivity;

  const ActivityDeletionDialog({Key? key, required this.localActivity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyHomesFormBloc, MyHomesFormState>(
      builder: (context, state) {
        return ConfirmationDialogWidget(
        action1: "Cancel", 
        action2: "Remove", 
        message: "Are you sure you want to remove the local activity: ${localActivity.name}",
        onPressed: () {
          context.read<MyHomesFormBloc>().add(MyHomesFormEvent.removeLocalActivity(localActivity));
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Local activity removed.")));
        },);
      },
    );
  }
}
