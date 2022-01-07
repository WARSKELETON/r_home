import 'package:r_home/domain/homes/home.dart';

abstract class IMyHomesRepository {
  Stream<List<Home>> watchAll();
  Stream<Home> watch(String homeUuid);
  Future<void> create(Home home);
  Future<void> update(Home home);
  void delete(Home home);
}