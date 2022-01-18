import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:r_home/application/image_viewer/image_viewer_bloc.dart';
import 'package:r_home/application/timer/timer_bloc.dart';
import 'package:r_home/presentation/core/chart_legend_widget.dart';
import 'package:r_home/presentation/disputes/widgets/image_index_widget.dart';
import 'package:r_home/presentation/core/images_view_widget.dart';
import 'package:r_home/presentation/disputes/widgets/vote_confirmation_dialog.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes/disputes_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/disputes/disputes_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/disputes/widgets/vote_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class DisputeDetailsPage extends StatelessWidget {
  final String disputeUuid;
  final DateTime creationDate;

  const DisputeDetailsPage({Key? key, required this.disputeUuid, required this.creationDate}): super(key: key);

  @override
  Widget build(BuildContext context) {
    var _closingTime = creationDate.add(const Duration(days: 2));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DisputesBloc(
            DisputesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              ),
              FirebaseStorage.instance
            ),
            FirebaseAuthFacade(
              FirebaseAuth.instance,
              GoogleSignIn(),
              FirebaseFirestore.instance
            ),            
            )..add(DisputesEvent.watchDispute(disputeUuid)),
        ),
        BlocProvider(
          create: (context) => TimerBloc()
            ..add(TimerEvent.initialize(_closingTime)),
        ),
        BlocProvider(
          create: (context) => ImageViewerBloc()
        ),
      ],
      child: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, timerState) {
          return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, authState) {
                return BlocBuilder<DisputesBloc, DisputesState>(
                    builder: (context, state) {
                    final _dispute = context.watch<DisputesBloc>().state.dispute;
                    final _rental = context.watch<DisputesBloc>().state.rental;
                    final _home = context.watch<DisputesBloc>().state.home;
                    final _currentVote = context.read<DisputesBloc>().state.currentVote;
                    final _images = context.watch<DisputesBloc>().state.disputeImages;

                    final _usersVoted = context.watch<DisputesBloc>().state.dispute.getUsersVoted();

                    final _imageIndex = context.watch<ImageViewerBloc>().state.selectedImageIndex;

                    final _userIsLoading = context.watch<AuthBloc>().state.isLoading;
                    final _user = context.watch<AuthBloc>().state.user;

                    final _timer = context.read<TimerBloc>().state.timeToEnd;
                    final _isOpened = !_closingTime.isBefore(DateTime.now());

                    return Scaffold(
                      appBar: AppBarWidget(
                        title: _dispute.title,
                      ),
                      body: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (_isOpened) ...[
                                      Text(
                                        "Closes in ",
                                        style: TextStyle(
                                          color: _timer.inHours >= 1 ? Theme.of(context).colorScheme.primaryBlue : Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          '${_timer.inHours.toString().padLeft(2, '0')} : ${DateFormat("mm : ss").format(DateTime.fromMillisecondsSinceEpoch(_timer.inMilliseconds))}',
                                          style: TextStyle(
                                            color: _timer.inHours >= 1 ? Theme.of(context).colorScheme.primaryBlue : Colors.red,
                                          ),
                                        ),
                                      ),
                                    ] else ...[
                                      const Text(
                                        "Closed"
                                      ),
                                    ]
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 180.0,
                                width: 225.0,
                                child: ImagesViewWidget(images: _images),
                              ),
                              if (_images.length > 1) ImageIndexWidget(numberOfImages: _images.length, activePage: _imageIndex),
                              Padding(
                                padding: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(_home.name),
                                    Material(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                            splashColor: const Color.fromRGBO(128,128,128, 0.3),
                                            onTap: () => AutoRouter.of(context).push(HomeDetailsPageRoute(
                                              homeUuid: _home.uuid,
                                              rentalUuid: (_user.id == _rental.hostId || _user.id == _rental.guestId) ? _dispute.rentalUuid : "")
                                            ),
                                            borderRadius: BorderRadius.circular(5.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    (_user.id == _rental.hostId || _user.id == _rental.guestId) ? 
                                                    "See Rental" :
                                                    "See Home",
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primaryBlue
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios_rounded,
                                                    color: Theme.of(context).colorScheme.primaryBlue,
                                                    size: 14,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                _dispute.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(_dispute.issuerUsername),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7, right: 7),
                                    child: Container(
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ),
                                  const Text("May 21, 2022 "),
                                ],
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  _dispute.descritption,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                                child: Divider(
                                  height: 5,
                                ),
                              ),
                              if (_usersVoted.contains(_user.id)) ...[
                                const Center(
                                  child: Text(
                                      "You already voted in this dispute.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                                  child: Divider(
                                    height: 5,
                                  ),
                                ),
                              ],
                              if (!_userIsLoading && _user.id != _dispute.issuerUuid && _home.host != _user.id && !_usersVoted.contains(_user.id)) ...[
                                if (_user.numTokens < 10)
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                                    child: Text(
                                      "Cast your vote",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width / 1.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        VoteButtonWidget(
                                          active: (_currentVote == DisputeVote.against || _currentVote == DisputeVote.none) && _user.numTokens >= 10,
                                          onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteReceived(DisputeVote.against)),
                                          icon: const Icon(
                                            RHomeIcon.against, 
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                        ),
                                        VoteButtonWidget(
                                          active: (_currentVote == DisputeVote.irrelevant || _currentVote == DisputeVote.none) && _user.numTokens >= 10,
                                          onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteReceived(DisputeVote.irrelevant)),
                                          icon: const Icon(
                                            RHomeIcon.irrelevant, 
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                        ),
                                        VoteButtonWidget(
                                          active: (_currentVote == DisputeVote.favour || _currentVote == DisputeVote.none) && _user.numTokens >= 10,
                                          onPressed: () => context.read<DisputesBloc>().add(const DisputesEvent.voteReceived(DisputeVote.favour)),
                                          icon: const Icon(
                                            RHomeIcon.favour, 
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                RoundedButtonWidget(
                                  text: _user.numTokens >= 10 ?
                                  (_currentVote == DisputeVote.none ?
                                    "SELECT AN OPTION" : (
                                      _currentVote == DisputeVote.favour ? "VOTE IN FAVOUR" : (
                                          _currentVote == DisputeVote.against ? "VOTE AGAINST" :
                                            "VOTE IRRELEVANT"
                                      )
                                    )
                                  ) : "INSUFFICIENT TOKENS TO VOTE",
                                  onPressed: () => {
                                    showDialog(context: context,
                                      builder: (_) => BlocProvider.value(
                                        value: context.read<DisputesBloc>(),
                                        child: VoteConfirmationDialog(vote: _currentVote),
                                      )
                                    )
                                  },
                                  disabled: _currentVote == DisputeVote.none || _user.numTokens < 10,
                                  backgroundColor: _user.numTokens < 10 ? Colors.red : Theme.of(context).colorScheme.primaryBlue,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.white,
                                  fontSize: 15,
                                  height: 35,
                                  width: _user.numTokens < 10 ? 300 : 250,
                                ),
                              ] else ...[
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Current Voting Results",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                if (_usersVoted.isNotEmpty) ...[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: ChartLegendWidget(data: {
                                      const Color(0xFFF7554C): "Against",
                                      const Color(0xFFF9A53C): "Irrelevant",
                                      Theme.of(context).colorScheme.primaryBlue: "In Favour"}
                                    ),
                                  ),
                                ],
                                Center(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      if (_usersVoted.isEmpty) ...[
                                        const Padding(
                                          padding: EdgeInsets.only(top: 20.0),
                                          child: Text(
                                            "There are no votes yet.",
                                          ),
                                        ),
                                      ] else ...[
                                        Text(
                                          "${_usersVoted.length} votes",
                                        ),
                                        SfCircularChart(
                                          tooltipBehavior: TooltipBehavior(enable: true),
                                          series: <DoughnutSeries<_PieData, String>>[
                                            DoughnutSeries<_PieData, String>(
                                              innerRadius: '75%',
                                              enableTooltip: true,
                                              dataSource: [
                                                _PieData(
                                                  "In Favour",
                                                  _dispute.usersVotedInFavour.length,
                                                  "${(_dispute.usersVotedInFavour.length / _usersVoted.length * 100).round()}%",
                                                  Theme.of(context).colorScheme.primaryBlue
                                                ),
                                                _PieData(
                                                  "Irrelevant",
                                                  _dispute.usersVotedIrrelevent.length,
                                                  "${(_dispute.usersVotedIrrelevent.length / _usersVoted.length * 100).round()}%",
                                                  const Color(0xFFF9A53C)
                                                ),
                                                _PieData(
                                                  "Against",
                                                  _dispute.usersVotedAgainst.length,
                                                  "${(_dispute.usersVotedAgainst.length / _usersVoted.length * 100).round()}%",
                                                  const Color(0xFFF7554C)
                                                ),
                                              ],
                                              xValueMapper: (_PieData data, _) => data.xData,
                                              yValueMapper: (_PieData data, _) => data.yData,
                                              dataLabelMapper: (_PieData data, _) => data.text,
                                              pointColorMapper: (_PieData data,  _) => data.color,
                                              dataLabelSettings: const DataLabelSettings(
                                                isVisible: true,
                                                labelPosition: ChartDataLabelPosition.outside,
                                              )
                                            ),
                                          ]
                                        )
                                      ],
                                    ]
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ),
                      ),
                      bottomNavigationBar: const BottomBarWidget(),
                    );
                  }
                );
              },
            );
        },
      ),
    );
  }
}

class _PieData {
 _PieData(this.xData, this.yData, this.text, this.color);
 final String xData;
 final num yData;
 final String text;
 final Color color;
}