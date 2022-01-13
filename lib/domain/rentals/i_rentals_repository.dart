import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/rentals/rental.dart';

abstract class IRentalsRepository {
  Stream<List<Rental>> watchAll();
  Stream<List<Rental>> watchAllAsGuest();
  Stream<List<Rental>> watchAllAsHost();
  Stream<Rental> watch(String homeUuid);
  Future<DomainUser> getHost(String hostUuid);
  Future<DomainUser> getGuest(String guestUuid);
  Future<void> create(Rental rental);
  Future<void> update(Rental rental);
  void delete(Rental rental);
}