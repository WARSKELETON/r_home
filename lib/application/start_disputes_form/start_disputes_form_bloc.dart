import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_homes_repository.dart';

part 'start_disputes_form_event.dart';
part 'start_disputes_form_state.dart';
part 'start_disputes_form_bloc.freezed.dart';

class StartDisputesFormBloc
    extends Bloc<StartDisputesFormEvent, StartDisputesFormState> {
  final IDisputesRepository _disputesRepository;

  StartDisputesFormBloc(this._disputesRepository): super(StartDisputesFormState.initial()) {
    on<Initialize>(_onInitialize);
    on<HomeChanged>(_onHomeChanged);
    on<TitleChanged>(_onTitleChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<InitialStakeChanged>(_onInitialStakeChanged);
    on<Submit>(_onSubmit);
  }

  void _onInitialize(Initialize event, Emitter<StartDisputesFormState> emit) {
    emit(state);
  }

  void _onHomeChanged(HomeChanged event, Emitter<StartDisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(homeUuid: event.homeUuid),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onTitleChanged(TitleChanged event, Emitter<StartDisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(title: event.title),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onDescriptionChanged(DescriptionChanged event, Emitter<StartDisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(descritption: event.description),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onInitialStakeChanged(InitialStakeChanged event, Emitter<StartDisputesFormState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(initialStake: event.tokens),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSubmit(Submit event, Emitter<StartDisputesFormState> emit) async {
    emit(state.copyWith(isSaving: true));

    emit(state.copyWith(isSaving: false));
  }
}
