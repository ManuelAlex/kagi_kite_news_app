// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perspective_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PerspectiveDto1Adapter extends TypeAdapter<PerspectiveDto1> {
  @override
  final int typeId = 3;

  @override
  PerspectiveDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PerspectiveDto1(
      text: fields[0] as String,
      sources: (fields[1] as List).cast<SourceDto1>(),
    );
  }

  @override
  void write(BinaryWriter writer, PerspectiveDto1 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.sources);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PerspectiveDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
