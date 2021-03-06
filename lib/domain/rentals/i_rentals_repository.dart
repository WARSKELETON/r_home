import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/rentals/rental.dart';

abstract class IRentalsRepository {
  Stream<List<Rental>> watchAll();
  Stream<List<Rental>> watchAllWhereUserIsInvolved();
  Stream<List<Rental>> watchAllAsGuest();
  Stream<List<Rental>> watchAllAsHost();
  Stream<Rental> watch(String homeUuid);
  Future<DomainUser> getUserById(String userUuid);
  Future<void> create(Rental rental, double pricePerNight);
  Future<void> update(Rental rental);
  void delete(Rental rental);
}