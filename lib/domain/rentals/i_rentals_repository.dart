import 'package:r_home/domain/rentals/rental.dart';

abstract class IRentalsRepository {
  Stream<List<Rental>> watchAll();
  Stream<Rental> watch(String homeUuid);
  Future<void> create(Rental rental);
  Future<void> update(Rental rental);
  void delete(Rental rental);
}