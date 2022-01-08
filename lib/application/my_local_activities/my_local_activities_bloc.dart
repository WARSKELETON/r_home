import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/domain/my_local_activities/i_my_local_activities_repository.dart';

part 'my_local_activities_event.dart';
part 'my_local_activities_state.dart';
part 'my_local_activities_bloc.freezed.dart';

class MyLocalActivitiesBloc
    extends Bloc<MyLocalActivitiesEvent, MyLocalActivitiesState> {
  final IMyLocalActivitiesRepository _myLocalActivitiesRepository;

  MyLocalActivitiesBloc(this._myLocalActivitiesRepository)
      : super(MyLocalActivitiesState.initial()) {
    on<Initialize>(_onInitialize);
    on<WatchLocalActivity>(_onWatchLocalActivity);
    on<LocalActivitiesReceived>(_onLocalActivitiesReceived);
    on<LocalActivityReceived>(_onLocalActivityReceived);
  }

  StreamSubscription<List<LocalActivity>>? _myLocalActivitiesStreamSubscription;
  StreamSubscription<LocalActivity>? _myLocalActivityStreamSubscription;

  void _onInitialize(
      MyLocalActivitiesEvent event, Emitter<MyLocalActivitiesState> emit) {
    _myLocalActivitiesStreamSubscription = _myLocalActivitiesRepository
        .watchAll()
        .listen(
          (localActivities) => add(MyLocalActivitiesEvent.localActivitiesReceived(localActivities)),
        );
    emit(state);
  }

  void _onWatchLocalActivity(
      WatchLocalActivity event, Emitter<MyLocalActivitiesState> emit) {
    print("Starting watching home " + event.localActivityUuid);
    _myLocalActivityStreamSubscription = _myLocalActivitiesRepository
        .watch(event.localActivityUuid)
        .listen((localActivity) => add(MyLocalActivitiesEvent.localActivityReceivedReceived(localActivity)));
    emit(state);
  }

  void _onLocalActivitiesReceived(
      LocalActivitiesReceived event, Emitter<MyLocalActivitiesState> emit) {
    emit(state.copyWith(localActivities: event.localActivities));
  }

  void _onLocalActivityReceived(
      LocalActivityReceived event, Emitter<MyLocalActivitiesState> emit) {
    emit(state.copyWith(localActivity: event.localActivity));
  }
}
