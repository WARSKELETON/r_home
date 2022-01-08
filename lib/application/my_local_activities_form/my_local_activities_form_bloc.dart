import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

part 'my_local_activities_form_event.dart';
part 'my_local_activities_form_state.dart';
part 'my_local_activities_form_bloc.freezed.dart';

class MyLocalActivitiesFormBloc extends Bloc<MyLocalActivitiesFormEvent, MyLocalActivitiesFormState> {
  final ILocalActivitiesRepository _localActivitiesRepository;

  MyLocalActivitiesFormBloc(this._localActivitiesRepository) : super(MyLocalActivitiesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<CategoryChanged>(_onCategoryChanged);
    on<NameChanged>(_onNameChanged);
    on<LocationChanged>(_onLocationChanged);
    on<PriceChanged>(_onPriceChanged);
    on<ContactChanged>(_onContactChanged);
    on<Submit>(_onSubmit);
  }


  void _onInitialize(Initialize event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(event.initialActivityOption.fold(
      () => state,
      (initialActivity) => state.copyWith(
        activity: initialActivity,
        isEditing: true
      ),
    ));
  }

  void _onCategoryChanged(CategoryChanged event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(state.copyWith(
      category: event.activityCategory,
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onNameChanged(NameChanged event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(state.copyWith(
      activity: state.activity.copyWith(name: event.name),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onLocationChanged(
      LocationChanged event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(state.copyWith(
      activity: state.activity.copyWith(location: event.location),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPriceChanged(PriceChanged event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(state.copyWith(
      activity: state.activity.copyWith(price: event.price),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onContactChanged(ContactChanged event, Emitter<MyLocalActivitiesFormState> emit) {
    emit(state.copyWith(
      activity: state.activity.copyWith(contact: event.contact),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSubmit(Submit event, Emitter<MyLocalActivitiesFormState> emit) async {
    emit(state.copyWith(isSaving: true));

    state.isEditing
        ? await _localActivitiesRepository.update(state.activity)
        : await _localActivitiesRepository.create(state.activity.copyWith(
      category: state.category!.name
    ));

    emit(state.copyWith(isSaving: false));
  }

}