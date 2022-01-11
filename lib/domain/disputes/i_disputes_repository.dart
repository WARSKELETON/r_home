
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/homes/home.dart';

abstract class IDisputesRepository {
  Stream<List<Dispute>> watchAll();
  Stream<List<Dispute>> watchAllFromUser();
  Stream<Dispute> watch(String disputeUuid);
  Stream<Home> watchHomeFromDispute(String homeUuid);
  Future<DomainUser> getHost(String hostUuid);
  Future<void> create(Dispute dispute);
  Future<void> update(Dispute dispute);
  void delete(Dispute dispute);
}