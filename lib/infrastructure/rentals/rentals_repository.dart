import 'package:async/async.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';
import 'package:r_home/infrastructure/rentals/rental_dto.dart';
import 'package:r_home/infrastructure/rentals/rentals_extension.dart';
import 'package:r_home/infrastructure/transactions/transaction_repository.dart';

class RentalsRepository extends TransactionRepository implements IRentalsRepository {
  final FirebaseFirestore _firestore;
  static const String PARENT_COLLECTION = "user-data";
  static const String RENTALS_COLLECTION = "rentals";
  final IAuthFacade _authFacade;

  RentalsRepository(this._firestore, this._authFacade) : super(_firestore);

  @override
  Stream<List<Rental>> watchAll() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListRental());
  }

  @override
  Stream<List<Rental>> watchAllWhereUserIsInvolved() async* {
    var stream1 = watchAllAsGuest();
    var stream2 = watchAllAsHost();
    
    yield* StreamZip([stream1, stream2]).map((streams) => [...streams[0], ...streams[1]]);
  }

  @override
  Stream<List<Rental>> watchAllAsGuest() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION)
        .where("guestId", isEqualTo: userId);

    yield* colRef.snapshots().map((query) => query.toListRental());
  }

  @override
  Stream<List<Rental>> watchAllAsHost() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION)
        .where("hostId", isEqualTo: userId);

    yield* colRef.snapshots().map((query) => query.toListRental());
  }

  @override
  Stream<Rental> watch(String rentalUuid) async* {
    final userId = _authFacade.getSignedInUserId()!;

    final docRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION)
        .doc(rentalUuid);

    yield* docRef.snapshots().map((doc) => doc.toRental());
  }

  @override
  Future<DomainUser> getUserById(String userUuid) {
    return _authFacade.getUserById(userUuid);
  }

  @override
  Future<void> create(Rental rental, double pricePerNight) async {
    final userId = _authFacade.getSignedInUserId()!;
    final currentUser = await _authFacade.getUserById(userId);
    final hostUser = await _authFacade.getUserById(rental.hostId);

    Rental finalRental = rental.copyWith(
      guestId: userId
    );

    RhomeTransaction transaction = RhomeTransaction.empty().copyWith(
      senderId: finalRental.guestId,
      receiverId: finalRental.hostId,
      senderUsername: currentUser.getUsername(),
      receiverUsername: hostUser.getUsername(),
      paymentMethod: finalRental.paymentMethod,
      amount: finalRental.totalPrice(pricePerNight),
      type: TransactionType.rental.name,
    );

    _firestore
        .collection(PARENT_COLLECTION)
        .doc(finalRental.guestId)
        .collection(RENTALS_COLLECTION)
        .doc(finalRental.uuid)
        .set(RentalDto.fromDomain(finalRental).toJson())
        .then((_) => print("Rental created successfuly"))
        .catchError((onError) => print(onError));

    _firestore
      .collection(PARENT_COLLECTION)
      .doc(finalRental.hostId)
      .collection(RENTALS_COLLECTION)
      .doc(finalRental.uuid)
      .set(RentalDto.fromDomain(finalRental).toJson())
      .then((_) => print("Rental created successfuly"))
      .catchError((onError) => print(onError));

    _authFacade.makeTransferOfTokens(transaction);
  }

  @override
  void delete(Rental home) {}

  @override
  Future<void> update(Rental rental) async {
    final userId = _authFacade.getSignedInUserId()!;

    _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION)
        .doc(rental.uuid)
        .update(RentalDto.fromDomain(rental).toJson())
        .then((_) => print("Rental updated successfuly"))
        .catchError((onError) => print(onError));
  }
}
