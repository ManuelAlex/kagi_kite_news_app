// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DomainDto1Adapter extends TypeAdapter<DomainDto1> {
  @override
  final int typeId = 2;

  @override
  DomainDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DomainDto1(name: fields[0] as String, favicon: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, DomainDto1 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.favicon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DomainDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
