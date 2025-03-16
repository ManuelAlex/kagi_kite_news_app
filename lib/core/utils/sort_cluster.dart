import '../../domain/domain.dart';

extension SortCluster on Iterable<Cluster> {
  List<Cluster> sortCluster() {
    return toList()..sort((Cluster a, Cluster b) {
      if (a.isRead == b.isRead) {
        return a.clusterNumber.compareTo(b.clusterNumber);
      }
      return a.isRead ? 1 : -1;
    });
  }
}
