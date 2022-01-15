import 'package:r_home/domain/local_activities/local_activity.dart';

abstract class ILocalActivitiesRepository {
  Stream<List<LocalActivity>> watchAll();
  Stream<List<LocalActivity>> watchAllFromUser();
  Stream<LocalActivity> watch(String localActivityUuid);
  Future<void> create(LocalActivity localActivity);
  Future<void> update(LocalActivity localActivity);
  void delete(LocalActivity localActivity);
}
