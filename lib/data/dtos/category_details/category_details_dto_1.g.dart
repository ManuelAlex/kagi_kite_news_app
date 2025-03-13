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
      category: fields[1] as String,
      read: (fields[2] as num).toInt(),
      clusters: (fields[3] as List).cast<ClusterDto1>(),
    );
  }

  @override
  void write(BinaryWriter writer, CategoryDetailsDto1 obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.read)
      ..writeByte(3)
      ..write(obj.clusters);
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
