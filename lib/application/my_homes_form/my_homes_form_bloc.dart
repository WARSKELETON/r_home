import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';

part 'my_homes_form_event.dart';
part 'my_homes_form_state.dart';
part 'my_homes_form_bloc.freezed.dart';

class MyHomesFormBloc extends Bloc<MyHomesFormEvent, MyHomesFormState> {
  final IHomesRepository _homesRepository;
  final ILocalActivitiesRepository _localActivitiesRepository;

  MyHomesFormBloc(this._homesRepository, this._localActivitiesRepository) : super(MyHomesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<ImagesReceived>(_onImagesReceived);
    on<ImageReceived>(_onImageReceived);
    on<ImageDeleted>(_onImageDeleted);
    on<LocalActivitiesChanged>(_onLocalActivitiesChanged);
    on<CategoryChanged>(_onCategoryChanged);
    on<ChangeLocalActivity>(_onChangeLocalActivity);
    on<RemoveLocalActivity>(_onRemoveLocalActivity);
    on<NameChanged>(_onNameChanged);
    on<LocationChanged>(_onLocationChanged);
    on<PriceChanged>(_onPriceChanged);
    on<AdultsAdd>(_onAdultsAdd);
    on<AdultsRemove>(_onAdultsRemove);
    on<ChildrenAdd>(_onChildrenAdd);
    on<ChildrenRemove>(_onChildrenRemove);
    on<PetsAdd>(_onPetsAdd);
    on<PetsRemove>(_onPetsRemove);
    on<Submit>(_onSubmit);
  }

  StreamSubscription<List<LocalActivity>>? _localActivitiesStreamSubscription;

  void _onInitialize(Initialize event, Emitter<MyHomesFormState> emit) {
    emit(event.initialHomeOption.fold(
      () => state,
      (initialHome) {
        if (initialHome.localActivities.isNotEmpty) {
          _localActivitiesStreamSubscription = _localActivitiesRepository.watchAllFromIds(initialHome.localActivities)
            .listen((localActivities) => add(MyHomesFormEvent.localActivitiesChanged(localActivities)));
        }

        _homesRepository.getHomeImages(initialHome.uuid)
          .then((images) => add(MyHomesFormEvent.imagesReceived(images)));

        return state.copyWith(
          home: initialHome,
          isEditing: true
        );
      }
    ));
  }

  void _onCategoryChanged(CategoryChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      category: state.category != event.activityCategory ? event.activityCategory : null,
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onImagesReceived(ImagesReceived event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(imagePaths: [...state.imagePaths, ...event.images]));
  }

  void _onImageReceived(ImageReceived event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(imagePaths: [...state.imagePaths, event.image]));
  }

  void _onImageDeleted(ImageDeleted event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(imagePaths: [...state.imagePaths.where((image) => image != event.image)]));
  }

  void _onLocalActivitiesChanged(LocalActivitiesChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      localActivities: event.localActivities
    ));
  }

  void _onChangeLocalActivity(ChangeLocalActivity event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      localActivities: [...state.localActivities, event.localActivity],
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onRemoveLocalActivity(RemoveLocalActivity event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      localActivities: [...state.localActivities.where((localActivity) => localActivity.uuid != event.localActivity.uuid)],
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onNameChanged(NameChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(name: event.name),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onLocationChanged(LocationChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      localActivities: [],
      home: state.home.copyWith(location: event.location),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPriceChanged(PriceChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(price: event.price),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAdultsAdd(AdultsAdd event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home
          .copyWith(maxAdults: state.home.maxAdults + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAdultsRemove(AdultsRemove event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home
          .copyWith(maxAdults: state.home.maxAdults - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onChildrenAdd(ChildrenAdd event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home
          .copyWith(maxChildren: state.home.maxChildren + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onChildrenRemove(ChildrenRemove event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home
          .copyWith(maxChildren: state.home.maxChildren - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPetsAdd(PetsAdd event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(maxPets: state.home.maxPets + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPetsRemove(PetsRemove event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(maxPets: state.home.maxPets - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSubmit(Submit event, Emitter<MyHomesFormState> emit) async {
    emit(state.copyWith(
      isSaving: true,
      home: state.home.copyWith(localActivities: state.localActivities.map((activity) => activity.uuid).toList())
    ));

    state.isEditing
        ? await _homesRepository.update(state.home)
        : await _homesRepository.create(state.home, state.imagePaths);

    emit(state.copyWith(isSaving: false));
  }
}
