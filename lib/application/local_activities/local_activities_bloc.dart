import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

part 'local_activities_event.dart';
part 'local_activities_state.dart';
part 'local_activities_bloc.freezed.dart';

class LocalActivitiesBloc extends Bloc<LocalActivitiesEvent, LocalActivitiesState> {
  final ILocalActivitiesRepository _localActivitiesRepository;

  LocalActivitiesBloc(this._localActivitiesRepository): super(LocalActivitiesState.initial()) {
    on<Initialize>(_onInitialize);
    on<WatchLocalActivity>(_onWatchLocalActivity);
    on<LocalActivitiesReceived>(_onLocalActivitiesReceived);
    on<LocalActivityReceived>(_onLocalActivityReceived);
  }

  StreamSubscription<List<LocalActivity>>? _localActivitiesStreamSubscription;
  StreamSubscription<LocalActivity>? _localActivityStreamSubscription;

  void _onInitialize(LocalActivitiesEvent event, Emitter<LocalActivitiesState> emit) {
    _localActivitiesStreamSubscription = _localActivitiesRepository.watchAll().listen(
        (localActivities) => add(LocalActivitiesEvent.localActivitiesReceived(localActivities))
      );
    emit(state);
  }

  void _onWatchLocalActivity(WatchLocalActivity event, Emitter<LocalActivitiesState> emit) {
    _localActivityStreamSubscription = _localActivitiesRepository.watch(event.localActivityUuid).listen(
        (localActivity) => add(LocalActivitiesEvent.localActivityReceivedReceived(localActivity))
      );
    emit(state);
  }

  void _onLocalActivitiesReceived(LocalActivitiesReceived event, Emitter<LocalActivitiesState> emit) {
    emit(state.copyWith(localActivities: event.localActivities));
  }

  void _onLocalActivityReceived(LocalActivityReceived event, Emitter<LocalActivitiesState> emit) {
    emit(state.copyWith(localActivity: event.localActivity));
  }
}
