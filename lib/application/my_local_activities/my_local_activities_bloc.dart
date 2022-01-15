import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

part 'my_local_activities_event.dart';
part 'my_local_activities_state.dart';
part 'my_local_activities_bloc.freezed.dart';

class MyLocalActivitiesBloc
    extends Bloc<MyLocalActivitiesEvent, MyLocalActivitiesState> {
  final ILocalActivitiesRepository _localActivitiesRepository;

  MyLocalActivitiesBloc(this._localActivitiesRepository)
      : super(MyLocalActivitiesState.initial()) {
    on<Initialize>(_onInitialize);
    on<WatchLocalActivity>(_onWatchLocalActivity);
    on<LocalActivitiesReceived>(_onLocalActivitiesReceived);
    on<LocalActivityReceived>(_onLocalActivityReceived);
  }

  StreamSubscription<List<LocalActivity>>? _localActivitiesStreamSubscription;
  StreamSubscription<LocalActivity>? _localActivityStreamSubscription;

  void _onInitialize(MyLocalActivitiesEvent event, Emitter<MyLocalActivitiesState> emit) {
    _localActivitiesStreamSubscription = _localActivitiesRepository
        .watchAllFromUser().listen(
          (localActivities) => add(MyLocalActivitiesEvent.localActivitiesReceived(localActivities)),
        );
    emit(state);
  }

  void _onWatchLocalActivity(WatchLocalActivity event, Emitter<MyLocalActivitiesState> emit) {
    _localActivityStreamSubscription = _localActivitiesRepository
        .watch(event.localActivityUuid)
        .listen((localActivity) => add(MyLocalActivitiesEvent.localActivityReceivedReceived(localActivity)));
    emit(state);
  }

  void _onLocalActivitiesReceived(LocalActivitiesReceived event, Emitter<MyLocalActivitiesState> emit) {
    emit(state.copyWith(localActivities: event.localActivities));
  }

  void _onLocalActivityReceived(LocalActivityReceived event, Emitter<MyLocalActivitiesState> emit) {
    emit(state.copyWith(localActivity: event.localActivity));
  }
}
