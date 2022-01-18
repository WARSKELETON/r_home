import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_disputes_repository.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';

part 'disputes_event.dart';
part 'disputes_state.dart';
part 'disputes_bloc.freezed.dart';

class DisputesBloc extends Bloc<DisputesEvent, DisputesState> {
  final IDisputesRepository _disputesRepository;
  final IAuthFacade _authFacade;
  
  DisputesBloc(this._disputesRepository, this._authFacade) : super(DisputesState.initial()) {
    on<Initialize>(_onInitialize);
    on<ImagesReceived>(_onImagesReceived);
    on<DisputesReceived>(_onDisputesReceived);
    on<DisputeReceived>(_onDisputeReceived);
    on<HomeReceived>(_onHomeReceived);
    on<RentalReceived>(_onRentalReceived);
    on<WatchDispute>(_onWatchDispute);
    on<VoteReceived>(_onVoteReceived);
    on<VoteSubmit>(_onVoteSubmit);
  }

  StreamSubscription<List<Dispute>>? _myDisputesStreamSubscription;
  StreamSubscription<List<Dispute>>? _disputesStreamSubscription;
  StreamSubscription<Dispute>? _disputeStreamSubscription;
  StreamSubscription<Home>? _homeStreamSubscription;
  StreamSubscription<Rental>? _rentalStreamSubscription;

  void _onInitialize(Initialize event, Emitter<DisputesState> emit) {
    event.allDisputes ?
    _disputesStreamSubscription = _disputesRepository.watchAll().listen(
      (disputes) => add(DisputesEvent.disputesReceived(disputes)),
    ) :
    _myDisputesStreamSubscription = _disputesRepository.watchAllFromUser().listen(
      (disputes) => add(DisputesEvent.disputesReceived(disputes)),
    );
    
    emit(state);
  }

  void _onWatchDispute(WatchDispute event, Emitter<DisputesState> emit) {
    _disputeStreamSubscription = _disputesRepository
      .watch(event.disputeUuid)
      .listen((dispute) => add(DisputesEvent.disputeReceived(dispute))
    );

    _disputesRepository.getDisputeImages(event.disputeUuid)
    .then((images) => {
      add(DisputesEvent.imagesReceived(images))
    });
    emit(state);
  }

  void _onImagesReceived(ImagesReceived event, Emitter<DisputesState> emit) {
    emit(state.copyWith(disputeImages: event.images));
  }

  void _onDisputesReceived(DisputesReceived event, Emitter<DisputesState> emit) {
    emit(state.copyWith(disputes: event.disputes));
  }

  void _onDisputeReceived(DisputeReceived event, Emitter<DisputesState> emit) async {
    emit(state.copyWith(dispute: event.dispute));

    if (event.dispute.homeUuid != "") {
      _homeStreamSubscription = _disputesRepository
        .watchHomeFromDispute(event.dispute.homeUuid)
        .listen((home) => add(DisputesEvent.homeReceived(home))
      );
    }

    _rentalStreamSubscription = _disputesRepository
      .watchRentalFromDispute(event.dispute.rentalUuid, event.dispute.issuerUuid)
      .listen((rental) => add(DisputesEvent.rentalReceived(rental))
    );
  }

  void _onHomeReceived(HomeReceived event, Emitter<DisputesState> emit) async {
    emit(state.copyWith(home: event.home));
  }
  
  void _onRentalReceived(RentalReceived event, Emitter<DisputesState> emit) async {
    emit(state.copyWith(rental: event.rental));
  }

  void _onVoteReceived(VoteReceived event, Emitter<DisputesState> emit) {
      if (event.vote == state.currentVote) {
        emit(state.copyWith(currentVote: DisputeVote.none));
      } else {
        emit(state.copyWith(currentVote: event.vote));
      }
  }

  void _onVoteSubmit(VoteSubmit event, Emitter<DisputesState> emit) async {
    String? userId = _authFacade.getSignedInUserId();
    DomainUser user = await _authFacade.getUserById(userId!);
    
    if (state.currentVote == DisputeVote.against) {
      emit(state.copyWith(dispute: state.dispute.copyWith(usersVotedAgainst: [...state.dispute.usersVotedAgainst, userId])));
    } else if (state.currentVote == DisputeVote.irrelevant) {
      emit(state.copyWith(dispute: state.dispute.copyWith(usersVotedIrrelevent: [...state.dispute.usersVotedIrrelevent, userId])));
    } else if (state.currentVote == DisputeVote.favour) {
      emit(state.copyWith(dispute: state.dispute.copyWith(usersVotedInFavour: [...state.dispute.usersVotedInFavour, userId])));
    }
    _disputesRepository.update(state.dispute);

    RhomeTransaction transaction = RhomeTransaction.empty().copyWith(
      senderId: userId,
      receiverId: "",
      senderUsername: user.getUsername(),
      receiverUsername: "",
      paymentMethod: PaymentMethod.token.name,
      amount: 10,
      type: TransactionType.vote.name,
    );

    _authFacade.makeTransferOfTokens(transaction);
    emit(state);
  }

  @override
  Future<void> close() {
    _myDisputesStreamSubscription?.cancel();
    _disputesStreamSubscription?.cancel();
    _disputeStreamSubscription?.cancel();
    _homeStreamSubscription?.cancel();
    _rentalStreamSubscription?.cancel();
    return super.close();
  }
}
