// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_categories_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsCategoriesDto1Adapter extends TypeAdapter<NewsCategoriesDto1> {
  @override
  final int typeId = 7;

  @override
  NewsCategoriesDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsCategoriesDto1(
      categories: (fields[0] as List).cast<CategoryDto1>(),
      timestamp: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NewsCategoriesDto1 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.categories)
      ..writeByte(1)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsCategoriesDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
