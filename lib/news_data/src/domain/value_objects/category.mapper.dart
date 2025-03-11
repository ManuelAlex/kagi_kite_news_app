// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category.dart';

class CategoryMapper extends ClassMapperBase<Category> {
  CategoryMapper._();

  static CategoryMapper? _instance;
  static CategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Category';

  static String _$name(Category v) => v.name;
  static const Field<Category, String> _f$name = Field('name', _$name);
  static String _$file(Category v) => v.file;
  static const Field<Category, String> _f$file = Field('file', _$file);

  @override
  final MappableFields<Category> fields = const {
    #name: _f$name,
    #file: _f$file,
  };

  static Category _instantiate(DecodingData data) {
    return Category(name: data.dec(_f$name), file: data.dec(_f$file));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin CategoryMappable {
  CategoryCopyWith<Category, Category, Category> get copyWith =>
      _CategoryCopyWithImpl(this as Category, $identity, $identity);
  @override
  String toString() {
    return CategoryMapper.ensureInitialized().stringifyValue(this as Category);
  }

  @override
  bool operator ==(Object other) {
    return CategoryMapper.ensureInitialized()
        .equalsValue(this as Category, other);
  }

  @override
  int get hashCode {
    return CategoryMapper.ensureInitialized().hashValue(this as Category);
  }
}

extension CategoryValueCopy<$R, $Out> on ObjectCopyWith<$R, Category, $Out> {
  CategoryCopyWith<$R, Category, $Out> get $asCategory =>
      $base.as((v, t, t2) => _CategoryCopyWithImpl(v, t, t2));
}

abstract class CategoryCopyWith<$R, $In extends Category, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? file});
  CategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Category, $Out>
    implements CategoryCopyWith<$R, Category, $Out> {
  _CategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Category> $mapper =
      CategoryMapper.ensureInitialized();
  @override
  $R call({String? name, String? file}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (file != null) #file: file}));
  @override
  Category $make(CopyWithData data) => Category(
      name: data.get(#name, or: $value.name),
      file: data.get(#file, or: $value.file));

  @override
  CategoryCopyWith<$R2, Category, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CategoryCopyWithImpl($value, $cast, t);
}
