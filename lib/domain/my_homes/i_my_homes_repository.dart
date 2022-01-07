import 'package:r_home/domain/homes/home.dart';

abstract class IMyHomesRepository {
  Stream<List<Home>> watchAll();
  Future<void> create(Home home);
  Future<void> update(Home home, String docId);
  void delete(Home home);
}