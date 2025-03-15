// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_this_day_event_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OnThisDayEventDto1Adapter extends TypeAdapter<OnThisDayEventDto1> {
  @override
  final int typeId = 8;

  @override
  OnThisDayEventDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OnThisDayEventDto1(
      year: fields[0] as String,
      content: fields[1] as String,
      sortYear: (fields[2] as num).toDouble(),
      type: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OnThisDayEventDto1 obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.year)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.sortYear)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnThisDayEventDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
