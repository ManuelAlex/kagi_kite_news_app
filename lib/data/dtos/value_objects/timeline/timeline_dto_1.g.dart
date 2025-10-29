// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimelineDto1Adapter extends TypeAdapter<TimelineDto1> {
  @override
  final int typeId = 11;

  @override
  TimelineDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimelineDto1(
      date: fields[0] as String,
      content: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TimelineDto1 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimelineDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
