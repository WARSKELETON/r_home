import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_homes_repository.dart';

part 'disputes_form_event.dart';
part 'disputes_form_state.dart';
part 'disputes_form_bloc.freezed.dart';

class DisputesFormBloc extends Bloc<DisputesFormEvent, DisputesFormState> {
  final IDisputesRepository _disputesRepository;

  DisputesFormBloc(this._disputesRepository): super(DisputesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<CategoryChanged>(_onCategoryChanged);
    on<HomeChanged>(_onHomeChanged);
    on<TitleChanged>(_onTitleChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<InitialStakeChanged>(_onInitialStakeChanged);
    on<Submit>(_onSubmit);
  }

  void _onInitialize(Initialize event, Emitter<DisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(category: event.disputeCategory.name)));
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

    await _disputesRepository.create(state.dispute);

    emit(state.copyWith(isSaving: false));
  }
}
