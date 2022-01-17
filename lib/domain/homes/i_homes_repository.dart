
import 'package:r_home/domain/homes/home.dart';

abstract class IHomesRepository {
  Stream<List<Home>> watchAll();
  Stream<List<Home>> watchAllFiltered(String location);
  Stream<List<Home>> watchAllFromHomeIds(List<String> homeIds);
  Stream<List<Home>> watchAllFromActivityId(String activityUuid);
  Stream<List<Home>> watchAllFromHost();
  Future<List<String>> getDisputeImages(String homeUuid);
  Stream<Home> watch(String homeUuid);
  Future<void> create(Home home, List<String> imagesPath);
  Future<void> update(Home home);
  void delete(Home home);
}