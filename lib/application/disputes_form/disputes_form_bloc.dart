import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_disputes_repository.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'disputes_form_event.dart';
part 'disputes_form_state.dart';
part 'disputes_form_bloc.freezed.dart';

class DisputesFormBloc extends Bloc<DisputesFormEvent, DisputesFormState> {
  final IDisputesRepository _disputesRepository;
  final IRentalsRepository _rentalsRepository;
  final IHomesRepository _homesRepository;


  DisputesFormBloc(this._disputesRepository, this._rentalsRepository, this._homesRepository): super(DisputesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<ImageReceived>(_onImageReceived);
    on<ImageDeleted>(_onImageDeleted);
    on<RentalsReceived>(_onRentalsReceived);
    on<HomesReceived>(_onHomesReceived);
    on<CategoryChanged>(_onCategoryChanged);
    on<HomeChanged>(_onHomeChanged);
    on<RentalChanged>(_onRentalChanged);
    on<TitleChanged>(_onTitleChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<InitialStakeChanged>(_onInitialStakeChanged);
    on<Submit>(_onSubmit);
  }

  StreamSubscription<List<Rental>>? _myRentalsStreamSubscription;
  StreamSubscription<List<Home>>? _myRentalHomesStreamSubscription;

  void _onInitialize(Initialize event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: event.dispute, isEditing: true));

    _myRentalsStreamSubscription = _rentalsRepository.watchAllWhereUserIsInvolved().listen(
      (rentals) => {
        if (rentals.isNotEmpty) {
          add(DisputesFormEvent.rentalsReceived(rentals)),
          _myRentalHomesStreamSubscription = _homesRepository.watchAllFromHomeIds(rentals.map((rental) => rental.homeId).toList()).listen(
            (homes) => add(DisputesFormEvent.homesReceived(homes))
          )
        }
      }
    );
  }

  void _onImageReceived(ImageReceived event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(imagePaths: [...state.imagePaths, event.image]));
  }

  void _onImageDeleted(ImageDeleted event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(imagePaths: [...state.imagePaths.where((image) => image != event.image)]));
  }

  void _onRentalsReceived(RentalsReceived event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(rentals: event.rentals));
  }

  void _onHomesReceived(HomesReceived event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onCategoryChanged(CategoryChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(category: event.category.name),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onHomeChanged(HomeChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(homeUuid: event.homeUuid),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onRentalChanged(RentalChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(rentalUuid: event.rentalUuid),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onTitleChanged(TitleChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(title: event.title),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onDescriptionChanged(DescriptionChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(descritption: event.description),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onInitialStakeChanged(InitialStakeChanged event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(initialStake: event.tokens),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSubmit(Submit event, Emitter<DisputesFormState> emit) async {
    emit(state.copyWith(isSaving: true));

    await _disputesRepository.create(state.dispute, state.imagePaths);

    emit(state.copyWith(isSaving: false));
  }

  @override
  Future<void> close() {
    _myRentalsStreamSubscription?.cancel();
    _myRentalHomesStreamSubscription?.cancel();
    return super.close();
  }
}
