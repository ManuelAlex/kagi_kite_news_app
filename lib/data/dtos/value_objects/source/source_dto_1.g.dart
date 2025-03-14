// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SourceDto1Adapter extends TypeAdapter<SourceDto1> {
  @override
  final int typeId = 0;

  @override
  SourceDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SourceDto1(name: fields[0] as String, url: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, SourceDto1 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
