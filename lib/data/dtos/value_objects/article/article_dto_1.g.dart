// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArticleDto1Adapter extends TypeAdapter<ArticleDto1> {
  @override
  final int typeId = 1;

  @override
  ArticleDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArticleDto1(
      title: fields[0] as String,
      link: fields[1] as String,
      domain: fields[2] as String,
      date: fields[3] as DateTime,
      image: fields[4] as String?,
      imageCaption: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ArticleDto1 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.domain)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.imageCaption);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
