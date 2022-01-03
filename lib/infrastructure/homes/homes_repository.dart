import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';

class HomesRepository implements IHomesRepository {
  @override
  Future<void> create(Home home) async {}

  @override
  void delete(Home home) {}

  @override
  Stream<List<Home>> initializeAll() async* {}

  @override
  Future<void> update(Home home) async {}

  @override
  Stream<List<Home>> watchAll() async* {}
}
