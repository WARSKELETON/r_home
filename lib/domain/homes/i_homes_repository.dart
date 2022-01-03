import 'package:r_home/domain/homes/home.dart';

abstract class IHomesRepository {
  Stream<List<Home>> initializeAll();
  Stream<List<Home>> watchAll();
  Future<void> create(Home home);
  Future<void> update(Home home);
  void delete(Home home);
}
