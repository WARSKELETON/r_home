import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

class LocalActivitiesRepository implements ILocalActivitiesRepository {
  @override
  Future<void> create(LocalActivity localActivity) async {}

  @override
  void delete(LocalActivity localActivity) {}

  @override
  Stream<List<LocalActivity>> initializeAll() async* {}

  @override
  Future<void> update(LocalActivity localActivity) async {}

  @override
  Stream<List<LocalActivity>> watchAll() async* {}
}
