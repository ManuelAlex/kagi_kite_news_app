class HiveStorageException implements Exception {
  HiveStorageException(this.message);
  final String message;

  @override
  String toString() => 'HiveStorageException: $message';
}
