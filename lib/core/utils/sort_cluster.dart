import '../../domain/domain.dart';

extension SortCluster on Iterable<Cluster> {
  List<Cluster> sortCluster() {
    return toList()..sort((Cluster a, Cluster b) => a.isRead ? 1 : -1);
  }
}
