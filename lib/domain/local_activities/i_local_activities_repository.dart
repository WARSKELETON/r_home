import 'package:r_home/domain/local_activities/local_activity.dart';

abstract class ILocalActivitiesRepository {
  Stream<List<LocalActivity>> initializeAll();
  Stream<List<LocalActivity>> watchAll();
  Future<void> create(LocalActivity localActivity);
  Future<void> update(LocalActivity localActivity);
  void delete(LocalActivity localActivity);
}
