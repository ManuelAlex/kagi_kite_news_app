// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category_dto_1.dart';

class CategoryDto1Mapper extends ClassMapperBase<CategoryDto1> {
  CategoryDto1Mapper._();

  static CategoryDto1Mapper? _instance;
  static CategoryDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryDto1Mapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CategoryDto1';

  static String _$name(CategoryDto1 v) => v.name;
  static const Field<CategoryDto1, String> _f$name = Field('name', _$name);
  static String _$file(CategoryDto1 v) => v.file;
  static const Field<CategoryDto1, String> _f$file = Field('file', _$file);

  @override
  final MappableFields<CategoryDto1> fields = const {
    #name: _f$name,
    #file: _f$file,
  };

  static CategoryDto1 _instantiate(DecodingData data) {
    return CategoryDto1(name: data.dec(_f$name), file: data.dec(_f$file));
  }

  @override
  final Function instantiate = _instantiate;

  static CategoryDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CategoryDto1>(map);
  }

  static CategoryDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<CategoryDto1>(json);
  }
}

mixin CategoryDto1Mappable {
  String toJson() {
    return CategoryDto1Mapper.ensureInitialized()
        .encodeJson<CategoryDto1>(this as CategoryDto1);
  }

  Map<String, dynamic> toMap() {
    return CategoryDto1Mapper.ensureInitialized()
        .encodeMap<CategoryDto1>(this as CategoryDto1);
  }

  CategoryDto1CopyWith<CategoryDto1, CategoryDto1, CategoryDto1> get copyWith =>
      _CategoryDto1CopyWithImpl(this as CategoryDto1, $identity, $identity);
  @override
  String toString() {
    return CategoryDto1Mapper.ensureInitialized()
        .stringifyValue(this as CategoryDto1);
  }

  @override
  bool operator ==(Object other) {
    return CategoryDto1Mapper.ensureInitialized()
        .equalsValue(this as CategoryDto1, other);
  }

  @override
  int get hashCode {
    return CategoryDto1Mapper.ensureInitialized()
        .hashValue(this as CategoryDto1);
  }
}

extension CategoryDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CategoryDto1, $Out> {
  CategoryDto1CopyWith<$R, CategoryDto1, $Out> get $asCategoryDto1 =>
      $base.as((v, t, t2) => _CategoryDto1CopyWithImpl(v, t, t2));
}

abstract class CategoryDto1CopyWith<$R, $In extends CategoryDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? file});
  CategoryDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CategoryDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CategoryDto1, $Out>
    implements CategoryDto1CopyWith<$R, CategoryDto1, $Out> {
  _CategoryDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CategoryDto1> $mapper =
      CategoryDto1Mapper.ensureInitialized();
  @override
  $R call({String? name, String? file}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (file != null) #file: file}));
  @override
  CategoryDto1 $make(CopyWithData data) => CategoryDto1(
      name: data.get(#name, or: $value.name),
      file: data.get(#file, or: $value.file));

  @override
  CategoryDto1CopyWith<$R2, CategoryDto1, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CategoryDto1CopyWithImpl($value, $cast, t);
}
