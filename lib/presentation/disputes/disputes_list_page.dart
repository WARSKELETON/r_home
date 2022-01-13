import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes/disputes_bloc.dart';
import 'package:r_home/application/list_filter/list_filter_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/disputes/disputes_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_row_info_widget.dart';
import 'package:r_home/presentation/disputes/widgets/filters_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class DisputesListPage extends StatelessWidget {
  final bool privateMode;
  const DisputesListPage({Key? key, required this.privateMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: privateMode ? "My Disputes" : "Participate in Dispute"),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DisputesBloc(DisputesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
              ..add(const DisputesEvent.initialize(true))),
          BlocProvider(
            create: (BuildContext context) => ListFilterBloc(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance))
              ..add(const AuthEvent.getDomainUser()),
          ),
        ],
        child: BlocBuilder<ListFilterBloc, ListFilterState>(
          builder: (context, state) {
            final _user = context.watch<AuthBloc>().state.user;

            bool isOpenedActive = context.watch<ListFilterBloc>().state.isOpenedActive;
            bool isClosedActive = context.watch<ListFilterBloc>().state.isClosedActive;
            bool isVotedActive = context.watch<ListFilterBloc>().state.isVotedActive;
            bool isNotVotedActive = context.watch<ListFilterBloc>().state.isNotVotedActive;
            bool isDamagesActive = context.watch<ListFilterBloc>().state.isDamagesActive;
            bool isFalseAdsActive = context.watch<ListFilterBloc>().state.isFalseAdsActive;

            // TODO: sort list by creation date. Show latest first
            final _disputes = context.watch<DisputesBloc>().state.disputes.where((dispute) =>
              (!isVotedActive && !isNotVotedActive && !isDamagesActive && !isFalseAdsActive) ? true :
              (isDamagesActive == (dispute.category == DisputeCategory.damages_in_properties.name) ||
              isFalseAdsActive == (dispute.category == DisputeCategory.false_advertisement.name))
            ).where((dispute) =>
              dispute.usersVoted.contains(_user.id) == isVotedActive ||
              !dispute.usersVoted.contains(_user.id) == isNotVotedActive 
            ).where((dispute) =>
              dispute.isOpened == isOpenedActive ||
              !dispute.isOpened == isClosedActive 
            ).toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 5.0, right: 10.0),
                  child: FiltersWidget(opened: privateMode),
                ),
                const Divider(
                  thickness: 2,
                  height: 30,
                  color: Color(0xFFE5E5E5),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    itemCount: _disputes.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return DisputeListRowWidget(
                        dispute: _disputes[index],
                        onPressed: () => AutoRouter.of(context).push(DisputeDetailsPageRoute(disputeUuid: _disputes[index].uuid, creationDate: _disputes[index].creationDate)),
                        opened: privateMode,
                        voted: !privateMode,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}