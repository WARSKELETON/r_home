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
    on<ImagesReceived>(_onImagesReceived);
    on<WatchLocalActivity>(_onWatchLocalActivity);
    on<LocalActivitiesReceived>(_onLocalActivitiesReceived);
    on<LocalActivityReceived>(_onLocalActivityReceived);
  }

  StreamSubscription<List<LocalActivity>>? _localActivitiesStreamSubscription;
  StreamSubscription<LocalActivity>? _localActivityStreamSubscription;

  void _onInitialize(Initialize event, Emitter<LocalActivitiesState> emit) {
    if (event.filtered == null) {
      _localActivitiesStreamSubscription = _localActivitiesRepository.watchAll().listen(
        (localActivities) => add(LocalActivitiesEvent.localActivitiesReceived(localActivities))
      );
    } else if (event.filtered! && event.location != null) {
      _localActivitiesStreamSubscription = _localActivitiesRepository.watchAllFromLocation(event.location!).listen(
        (localActivities) => add(LocalActivitiesEvent.localActivitiesReceived(localActivities))
      ); 
    }
    emit(state);
  }

  void _onImagesReceived(ImagesReceived event, Emitter<LocalActivitiesState> emit) {
    emit(state.copyWith(localActivityImages: event.images));
  }

  void _onWatchLocalActivity(WatchLocalActivity event, Emitter<LocalActivitiesState> emit) {
    _localActivityStreamSubscription = _localActivitiesRepository.watch(event.localActivityUuid).listen(
        (localActivity) => add(LocalActivitiesEvent.localActivityReceivedReceived(localActivity))
      );

    _localActivitiesRepository.getLocalActivityImages(event.localActivityUuid)
      .then((images) => {
        add(LocalActivitiesEvent.imagesReceived(images))
      });
    emit(state);
  }

  void _onLocalActivitiesReceived(LocalActivitiesReceived event, Emitter<LocalActivitiesState> emit) {
    emit(state.copyWith(localActivities: event.localActivities));
  }

  void _onLocalActivityReceived(LocalActivityReceived event, Emitter<LocalActivitiesState> emit) {
    emit(state.copyWith(localActivity: event.localActivity));
  }

  @override
  Future<void> close() {
    _localActivitiesStreamSubscription?.cancel();
    _localActivityStreamSubscription?.cancel();
    return super.close();
  }
}
