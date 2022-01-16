import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';

abstract class IDisputesRepository {
  Stream<List<Dispute>> watchAll();
  Stream<List<Dispute>> watchAllFromUser();
  Stream<Dispute> watch(String disputeUuid);
  Stream<Home> watchHomeFromDispute(String homeUuid);
  Stream<Rental> watchRentalFromDispute(String rentalUuid, String issuerUuid);
  Future<List<String>> getDisputeImages(String disputeUuid);
  Future<void> create(Dispute dispute, List<String> imagesPath);
  Future<void> update(Dispute dispute);
  void delete(Dispute dispute);
}