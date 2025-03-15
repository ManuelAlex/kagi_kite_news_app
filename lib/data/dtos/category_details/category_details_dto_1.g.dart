// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_details_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryDetailsDto1Adapter extends TypeAdapter<CategoryDetailsDto1> {
  @override
  final int typeId = 6;

  @override
  CategoryDetailsDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryDetailsDto1(
      timestamp: fields[0] as DateTime,
      category: fields[1] == null ? 'OnThisDay' : fields[1] as String,
      read: fields[2] == null ? 0 : (fields[2] as num).toInt(),
      clusters:
          fields[4] == null
              ? const <ClusterDto1>[]
              : (fields[4] as List).cast<ClusterDto1>(),
      events:
          fields[5] == null
              ? const <OnThisDayEventDto1>[]
              : (fields[5] as List).cast<OnThisDayEventDto1>(),
      isRead: fields[3] == null ? false : fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryDetailsDto1 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.read)
      ..writeByte(3)
      ..write(obj.isRead)
      ..writeByte(4)
      ..write(obj.clusters)
      ..writeByte(5)
      ..write(obj.events);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryDetailsDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
