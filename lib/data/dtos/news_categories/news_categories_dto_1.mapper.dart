// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_categories_dto_1.dart';

class NewsCategoriesDto1Mapper extends ClassMapperBase<NewsCategoriesDto1> {
  NewsCategoriesDto1Mapper._();

  static NewsCategoriesDto1Mapper? _instance;
  static NewsCategoriesDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsCategoriesDto1Mapper._());
      MapperContainer.globals.useAll(<MapperBase<Object>>[
        DatetimeJsonMapper(),
      ]);
      CategoryDto1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewsCategoriesDto1';

  static List<CategoryDto1> _$categories(NewsCategoriesDto1 v) => v.categories;
  static const Field<NewsCategoriesDto1, List<CategoryDto1>> _f$categories =
      Field('categories', _$categories);
  static DateTime _$timestamp(NewsCategoriesDto1 v) => v.timestamp;
  static const Field<NewsCategoriesDto1, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );

  @override
  final MappableFields<NewsCategoriesDto1> fields = const {
    #categories: _f$categories,
    #timestamp: _f$timestamp,
  };

  static NewsCategoriesDto1 _instantiate(DecodingData data) {
    return NewsCategoriesDto1(
      categories: data.dec(_f$categories),
      timestamp: data.dec(_f$timestamp),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NewsCategoriesDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NewsCategoriesDto1>(map);
  }

  static NewsCategoriesDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<NewsCategoriesDto1>(json);
  }
}

mixin NewsCategoriesDto1Mappable {
  String toJson() {
    return NewsCategoriesDto1Mapper.ensureInitialized()
        .encodeJson<NewsCategoriesDto1>(this as NewsCategoriesDto1);
  }

  Map<String, dynamic> toMap() {
    return NewsCategoriesDto1Mapper.ensureInitialized()
        .encodeMap<NewsCategoriesDto1>(this as NewsCategoriesDto1);
  }

  NewsCategoriesDto1CopyWith<
    NewsCategoriesDto1,
    NewsCategoriesDto1,
    NewsCategoriesDto1
  >
  get copyWith => _NewsCategoriesDto1CopyWithImpl(
    this as NewsCategoriesDto1,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return NewsCategoriesDto1Mapper.ensureInitialized().stringifyValue(
      this as NewsCategoriesDto1,
    );
  }

  @override
  bool operator ==(Object other) {
    return NewsCategoriesDto1Mapper.ensureInitialized().equalsValue(
      this as NewsCategoriesDto1,
      other,
    );
  }

  @override
  int get hashCode {
    return NewsCategoriesDto1Mapper.ensureInitialized().hashValue(
      this as NewsCategoriesDto1,
    );
  }
}

extension NewsCategoriesDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NewsCategoriesDto1, $Out> {
  NewsCategoriesDto1CopyWith<$R, NewsCategoriesDto1, $Out>
  get $asNewsCategoriesDto1 =>
      $base.as((v, t, t2) => _NewsCategoriesDto1CopyWithImpl(v, t, t2));
}

abstract class NewsCategoriesDto1CopyWith<
  $R,
  $In extends NewsCategoriesDto1,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CategoryDto1,
    CategoryDto1CopyWith<$R, CategoryDto1, CategoryDto1>
  >
  get categories;
  $R call({List<CategoryDto1>? categories, DateTime? timestamp});
  NewsCategoriesDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NewsCategoriesDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewsCategoriesDto1, $Out>
    implements NewsCategoriesDto1CopyWith<$R, NewsCategoriesDto1, $Out> {
  _NewsCategoriesDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewsCategoriesDto1> $mapper =
      NewsCategoriesDto1Mapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CategoryDto1,
    CategoryDto1CopyWith<$R, CategoryDto1, CategoryDto1>
  >
  get categories => ListCopyWith(
    $value.categories,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(categories: v),
  );
  @override
  $R call({List<CategoryDto1>? categories, DateTime? timestamp}) => $apply(
    FieldCopyWithData({
      if (categories != null) #categories: categories,
      if (timestamp != null) #timestamp: timestamp,
    }),
  );
  @override
  NewsCategoriesDto1 $make(CopyWithData data) => NewsCategoriesDto1(
    categories: data.get(#categories, or: $value.categories),
    timestamp: data.get(#timestamp, or: $value.timestamp),
  );

  @override
  NewsCategoriesDto1CopyWith<$R2, NewsCategoriesDto1, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NewsCategoriesDto1CopyWithImpl($value, $cast, t);
}
