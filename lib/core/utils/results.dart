import 'package:flutter/cupertino.dart';

abstract class Result<TEntity> {
  const Result();

  bool get isSuccess => this is Success<TEntity>;
  bool get isFailure => this is Failure<TEntity>;
}

@immutable
class Success<TEntity> extends Result<TEntity> {
  const Success(this.data);
  final TEntity data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Success<TEntity> && other.data == data);

  @override
  int get hashCode => data.hashCode;
}

@immutable
class Failure<TEntity> extends Result<TEntity> {
  const Failure(this.message, {this.erroCode});
  final String message;
  final int? erroCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Failure<TEntity> && other.message == message);

  @override
  int get hashCode => message.hashCode ^ erroCode.hashCode;
}
