import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

abstract class IMyLocalActivitiesRepository {
  Stream<List<LocalActivity>> watchAll();
  Future<void> create(LocalActivity localActivity);
  Future<void> update(LocalActivity localActivity, String docId);
  void delete(LocalActivity localActivity);
}