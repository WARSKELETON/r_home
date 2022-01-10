import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/infrastructure/rentals/rental_dto.dart';
import 'package:r_home/infrastructure/rentals/rentals_extension.dart';

class RentalsRepository implements IRentalsRepository {
  final FirebaseFirestore _firestore;
  static const String PARENT_COLLECTION = "user-data";
  static const String RENTALS_COLLECTION = "rentals";
  final IAuthFacade _authFacade;

  RentalsRepository(this._firestore, this._authFacade);

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
  Stream<Rental> watch(String homeUuid) async* {
    final userId = _authFacade.getSignedInUserId()!;

    final docRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(RENTALS_COLLECTION)
        .doc(homeUuid);

    yield* docRef.snapshots().map((doc) => doc.toRental());
  }

  @override
  Future<void> create(Rental rental) async {
    final userId = _authFacade.getSignedInUserId()!;

    Rental finalRental = rental.copyWith(
      guestId: userId
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
