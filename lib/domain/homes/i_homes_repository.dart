
import 'package:r_home/domain/homes/home.dart';

abstract class IHomesRepository {
  Stream<List<Home>> watchAll();
  Stream<List<Home>> watchAllFromHomeIds(List<String> homeIds);
  Stream<List<Home>> watchAllFromHost();
  Stream<Home> watch(String homeUuid);
  Future<void> create(Home home);
  Future<void> update(Home home);
  void delete(Home home);
}