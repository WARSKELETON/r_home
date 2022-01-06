import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/profile/widgets/number_tokens_info_widget.dart';
import 'package:r_home/presentation/profile/widgets/transaction_history_item_widget.dart';

class TransactionHistoryPage extends StatelessWidget {
  final List<int> transactions;
  const TransactionHistoryPage({Key? key, required this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, top: 25.0, right: 40.0, bottom: 50.0),
              child: Column(
                children: [
                  NumberTokensInfoWidget(
                      title: "My tokens:", tokens: state.user.numTokens),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Text(
                      "Transaction History",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  transactions.isNotEmpty ?
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(10),
                      itemCount: transactions.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return const TransactionHistoryItemPage();
                      },
                      separatorBuilder: (BuildContext context, int index) => const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                      ),
                    ),
                  ):
                const Text("You haven't sent or received any transaction yet.", textAlign: TextAlign.center,)
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
