import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/my_homes/i_my_homes_repository.dart';

part 'my_homes_form_event.dart';
part 'my_homes_form_state.dart';
part 'my_homes_form_bloc.freezed.dart';

class MyHomesFormBloc extends Bloc<MyHomesFormEvent, MyHomesFormState> {
  final IMyHomesRepository _homesRepository;

  MyHomesFormBloc(this._homesRepository) : super(MyHomesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<NameChanged>(_onNameChanged);
    on<LocationChanged>(_onLocationChanged);
    on<PriceChanged>(_onPriceChanged);
    on<AdultsChange>(_onAdultsChange);
    on<AdultsAdd>(_onAdultsAdd);
    on<AdultsRemove>(_onAdultsRemove);
    on<ChildrenChange>(_onChildrenChange);
    on<ChildrenAdd>(_onChildrenAdd);
    on<ChildrenRemove>(_onChildrenRemove);
    on<PetsChange>(_onPetsChange);
    on<PetsAdd>(_onPetsAdd);
    on<PetsRemove>(_onPetsRemove);
    on<Create>(_onCreate);
    on<Update>(_onUpdate);
  }

  void _onInitialize(MyHomesFormEvent event, Emitter<MyHomesFormState> emit) {
    emit(state);
  }

  void _onNameChanged(NameChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(name: event.name),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onLocationChanged(
      LocationChanged event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
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

  void _onAdultsChange(AdultsChange event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(maxAdults: event.numberAdults),
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

  void _onChildrenChange(ChildrenChange event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(maxChildren: event.numberChilds),
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

  void _onPetsChange(PetsChange event, Emitter<MyHomesFormState> emit) {
    emit(state.copyWith(
      home: state.home.copyWith(maxPets: event.numberPets),
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

  void _onCreate(Create event, Emitter<MyHomesFormState> emit) {
    _homesRepository.create(state.home);
  }

  void _onUpdate(Update event, Emitter<MyHomesFormState> emit) {
    _homesRepository.update(state.home);
  }
}
