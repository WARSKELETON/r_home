import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/profile/widgets/number_tokens_info_widget.dart';
import 'package:r_home/presentation/profile/widgets/wallet_address_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Wallet"),
      body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final currentUser = context.watch<AuthBloc>().state.user;

            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 25.0, right: 40.0, bottom: 50.0),
                  child: Column(
                    children: [
                      NumberTokensInfoWidget(title: "My tokens:", tokens: state.user.numTokens),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset("assets/icons/qr-code.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          "Share this QR code with anyone to receive payments.", 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 25.0),
                        child: WalletAddressWidget(address: "f90e0c064708e3je4328d33j2ks"),
                      ),
                      if (currentUser.role != "producer") ...[
                        RoundedButtonWidget(
                          text: 'Send Tokens',
                          onPressed: () => AutoRouter.of(context).push(const SendTokensPageRoute()),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                          fontSize: 20,
                          height: 50,
                          width: 270,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                      RoundedButtonWidget(
                        text: 'Monitorize Fees',
                        onPressed: () => AutoRouter.of(context).push(const MonitorizeFeesPageRoute()),
                        backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.white,
                        fontSize: 20,
                        height: 50,
                        width: 270,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      RoundedButtonWidget(
                        text: 'Transaction History',
                        onPressed: () => AutoRouter.of(context).push(TransactionHistoryPageRoute()),
                        backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.white,
                        fontSize: 20,
                        height: 50,
                        width: 270,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
