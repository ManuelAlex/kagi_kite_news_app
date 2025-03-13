// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category_details_dto_1.dart';

class CategoryDetailsDto1Mapper extends ClassMapperBase<CategoryDetailsDto1> {
  CategoryDetailsDto1Mapper._();

  static CategoryDetailsDto1Mapper? _instance;
  static CategoryDetailsDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryDetailsDto1Mapper._());
      MapperContainer.globals
          .useAll(<MapperBase<Object>>[DatetimeJsonMapper()]);
      ClusterDto1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CategoryDetailsDto1';

  static DateTime _$timestamp(CategoryDetailsDto1 v) => v.timestamp;
  static const Field<CategoryDetailsDto1, DateTime> _f$timestamp =
      Field('timestamp', _$timestamp);
  static String _$category(CategoryDetailsDto1 v) => v.category;
  static const Field<CategoryDetailsDto1, String> _f$category =
      Field('category', _$category);
  static int _$read(CategoryDetailsDto1 v) => v.read;
  static const Field<CategoryDetailsDto1, int> _f$read = Field('read', _$read);
  static List<ClusterDto1> _$clusters(CategoryDetailsDto1 v) => v.clusters;
  static const Field<CategoryDetailsDto1, List<ClusterDto1>> _f$clusters =
      Field('clusters', _$clusters);

  @override
  final MappableFields<CategoryDetailsDto1> fields = const {
    #timestamp: _f$timestamp,
    #category: _f$category,
    #read: _f$read,
    #clusters: _f$clusters,
  };

  static CategoryDetailsDto1 _instantiate(DecodingData data) {
    return CategoryDetailsDto1(
        timestamp: data.dec(_f$timestamp),
        category: data.dec(_f$category),
        read: data.dec(_f$read),
        clusters: data.dec(_f$clusters));
  }

  @override
  final Function instantiate = _instantiate;

  static CategoryDetailsDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CategoryDetailsDto1>(map);
  }

  static CategoryDetailsDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<CategoryDetailsDto1>(json);
  }
}

mixin CategoryDetailsDto1Mappable {
  String toJson() {
    return CategoryDetailsDto1Mapper.ensureInitialized()
        .encodeJson<CategoryDetailsDto1>(this as CategoryDetailsDto1);
  }

  Map<String, dynamic> toMap() {
    return CategoryDetailsDto1Mapper.ensureInitialized()
        .encodeMap<CategoryDetailsDto1>(this as CategoryDetailsDto1);
  }

  CategoryDetailsDto1CopyWith<CategoryDetailsDto1, CategoryDetailsDto1,
          CategoryDetailsDto1>
      get copyWith => _CategoryDetailsDto1CopyWithImpl(
          this as CategoryDetailsDto1, $identity, $identity);
  @override
  String toString() {
    return CategoryDetailsDto1Mapper.ensureInitialized()
        .stringifyValue(this as CategoryDetailsDto1);
  }

  @override
  bool operator ==(Object other) {
    return CategoryDetailsDto1Mapper.ensureInitialized()
        .equalsValue(this as CategoryDetailsDto1, other);
  }

  @override
  int get hashCode {
    return CategoryDetailsDto1Mapper.ensureInitialized()
        .hashValue(this as CategoryDetailsDto1);
  }
}

extension CategoryDetailsDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CategoryDetailsDto1, $Out> {
  CategoryDetailsDto1CopyWith<$R, CategoryDetailsDto1, $Out>
      get $asCategoryDetailsDto1 =>
          $base.as((v, t, t2) => _CategoryDetailsDto1CopyWithImpl(v, t, t2));
}

abstract class CategoryDetailsDto1CopyWith<$R, $In extends CategoryDetailsDto1,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ClusterDto1,
      ClusterDto1CopyWith<$R, ClusterDto1, ClusterDto1>> get clusters;
  $R call(
      {DateTime? timestamp,
      String? category,
      int? read,
      List<ClusterDto1>? clusters});
  CategoryDetailsDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CategoryDetailsDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CategoryDetailsDto1, $Out>
    implements CategoryDetailsDto1CopyWith<$R, CategoryDetailsDto1, $Out> {
  _CategoryDetailsDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CategoryDetailsDto1> $mapper =
      CategoryDetailsDto1Mapper.ensureInitialized();
  @override
  ListCopyWith<$R, ClusterDto1,
          ClusterDto1CopyWith<$R, ClusterDto1, ClusterDto1>>
      get clusters => ListCopyWith($value.clusters,
          (v, t) => v.copyWith.$chain(t), (v) => call(clusters: v));
  @override
  $R call(
          {DateTime? timestamp,
          String? category,
          int? read,
          List<ClusterDto1>? clusters}) =>
      $apply(FieldCopyWithData({
        if (timestamp != null) #timestamp: timestamp,
        if (category != null) #category: category,
        if (read != null) #read: read,
        if (clusters != null) #clusters: clusters
      }));
  @override
  CategoryDetailsDto1 $make(CopyWithData data) => CategoryDetailsDto1(
      timestamp: data.get(#timestamp, or: $value.timestamp),
      category: data.get(#category, or: $value.category),
      read: data.get(#read, or: $value.read),
      clusters: data.get(#clusters, or: $value.clusters));

  @override
  CategoryDetailsDto1CopyWith<$R2, CategoryDetailsDto1, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CategoryDetailsDto1CopyWithImpl($value, $cast, t);
}
