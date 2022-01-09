
import 'package:r_home/domain/disputes/dispute.dart';

abstract class IDisputesRepository {
  Stream<List<Dispute>> watchAll();
  Stream<List<Dispute>> watchAllFromUser();
  Stream<Dispute> watch(String disputeUuid);
  Future<void> create(Dispute dispute);
  Future<void> update(Dispute dispute);
  void delete(Dispute dispute);
}