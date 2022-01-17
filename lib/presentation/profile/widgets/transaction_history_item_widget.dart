import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class TransactionHistoryItemPage extends StatelessWidget {
  final RhomeTransaction transaction;

  const TransactionHistoryItemPage({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final currentUser = context.watch<AuthBloc>().state.user;

        return SizedBox(
          height: 50,
          child: ListTile(
            leading: Icon(transaction.getPaymentMethodIcon(), size: 40, color: Theme.of(context).colorScheme.primaryBlue,),
            title: Padding(
              padding: EdgeInsets.only(bottom: 3.0),
              child: Text(
                transaction.getAmountString(currentUser.id),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            subtitle: Text(
              transaction.getDescription(currentUser.id),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
        );
      },
    );
  }
}
