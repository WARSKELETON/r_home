import 'package:flutter/material.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_row_info_widget.dart';

class DisputesListWidget extends StatelessWidget {
  final List<Dispute> disputes;
  
  const DisputesListWidget({Key? key, required this.disputes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(5),
        itemCount: disputes.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return DisputeRowInfoWidget(dispute: disputes[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
        ),
      ),
    );
  }
}