import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes/disputes_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/disputes/disputes_repository.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/image_and_details_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_type_widget.dart';

class DisputeDetailsPage extends StatelessWidget {
  final String disputeUuid;
  final bool privateMode;

  const DisputeDetailsPage({Key? key, required this.disputeUuid, required this.privateMode}): super(key: key);

    Widget _buildRow(BuildContext context, String left, var right) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(right.toString()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DisputesBloc(DisputesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                  FirebaseFirestore.instance)))
            ..add(DisputesEvent.watchDispute(disputeUuid)),
        ),
        BlocProvider(
          create: (context) => AuthBloc(FirebaseAuthFacade(
              FirebaseAuth.instance,
              GoogleSignIn(),
              FirebaseFirestore.instance))
            ..add(const AuthEvent.getDomainUser()),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return BlocBuilder<DisputesBloc, DisputesState>(
              builder: (context, state) {
              final _dispute = context.watch<DisputesBloc>().state.dispute;
              final _home = context.watch<DisputesBloc>().state.home;
              final _user = context.watch<AuthBloc>().state.user;
              final _host = context.read<DisputesBloc>().state.host;
              final _userIsLoading = context.watch<AuthBloc>().state.isLoading;

              return Scaffold(
                appBar: AppBarWidget(
                  title: _dispute.title,
                ),
                body: LayoutBuilder(
                  builder:
                      (BuildContext context, BoxConstraints viewportConstraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Column(
                            children: [
                              Container(
                                height: 160.0,
                                width: 160.0,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/icons/dispute_alarm.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              
                              Text(_host.name == null ? "name" : _host.name!)
                            ],
                          ),
                        ),
                        if (!_userIsLoading && _user.id != state.dispute.issuerUuid) ...[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Center(
                              child: Wrap(
                                spacing: 6.0,
                                runSpacing: 6.0,
                                alignment: WrapAlignment.center,
                                children: [
                                  RoundedButtonWidget(
                                    text: 'VOTE\nAGAINST',
                                    onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteAgainst()),
                                    backgroundColor: const Color(0XFFFFCDD2),
                                    fontWeight: FontWeight.w400,
                                    textColor:
                                        Theme.of(context).colorScheme.primaryBlue,
                                    fontSize: 15,
                                    height: 55,
                                    width: 150,
                                    textAlign: TextAlign.center,
                                  ),
                                  RoundedButtonWidget(
                                    text: 'VOTE\nIN FAVOUR',
                                    onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteFavour()),
                                    backgroundColor: const Color(0XFFC8E6C9),
                                    fontWeight: FontWeight.w400,
                                    textColor:
                                        Theme.of(context).colorScheme.primaryBlue,
                                    fontSize: 15,
                                    height: 55,
                                    width: 150,
                                    textAlign: TextAlign.center,
                                  ),
                                  RoundedButtonWidget(
                                    text: 'VOTE\nIRRELEVANT',
                                    onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteIndiferent()),
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .primaryBlue
                                        .withOpacity(0.3),
                                    fontWeight: FontWeight.w400,
                                    textColor: Colors.white,
                                    fontSize: 15,
                                    height: 55,
                                    width: 150,
                                    textAlign: TextAlign.center,
                                  ),
                                ]
                              ),
                            ),
                          ),
                        ],
                      ],
                    );
                  },
                ),
                bottomNavigationBar: const BottomBarWidget(),
              );
            }
          );
        },
      ),
    );
  }
}
