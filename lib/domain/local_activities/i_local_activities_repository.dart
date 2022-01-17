import 'package:r_home/domain/local_activities/local_activity.dart';

abstract class ILocalActivitiesRepository {
  Stream<List<LocalActivity>> watchAll();
  Stream<List<LocalActivity>> watchAllFromUser();
  Stream<List<LocalActivity>> watchAllFromIds(List<String> activitiesIds);
  Stream<List<LocalActivity>> watchAllFromLocation(String location);
  Stream<LocalActivity> watch(String localActivityUuid);
  Future<List<String>> getLocalActivityImages(String localActivityUuid);
  Future<void> create(LocalActivity localActivity, List<String> imagesPath);
  Future<void> update(LocalActivity localActivity);
  void delete(LocalActivity localActivity);
}
