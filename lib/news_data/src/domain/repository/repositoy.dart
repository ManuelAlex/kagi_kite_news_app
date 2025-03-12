import '../entities/_entity.dart';

abstract class Repository<TEntity extends Entity<TEntityId>, TEntityId> {
  const Repository();
}
