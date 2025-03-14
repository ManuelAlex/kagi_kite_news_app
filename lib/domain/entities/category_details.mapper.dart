// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'category_details.dart';

class CategoryDetailsMapper extends ClassMapperBase<CategoryDetails> {
  CategoryDetailsMapper._();

  static CategoryDetailsMapper? _instance;
  static CategoryDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryDetailsMapper._());
      ClusterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CategoryDetails';

  static DateTime _$timestamp(CategoryDetails v) => v.timestamp;
  static const Field<CategoryDetails, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );
  static String _$category(CategoryDetails v) => v.category;
  static const Field<CategoryDetails, String> _f$category = Field(
    'category',
    _$category,
  );
  static int _$read(CategoryDetails v) => v.read;
  static const Field<CategoryDetails, int> _f$read = Field('read', _$read);
  static List<Cluster> _$clusters(CategoryDetails v) => v.clusters;
  static const Field<CategoryDetails, List<Cluster>> _f$clusters = Field(
    'clusters',
    _$clusters,
  );

  @override
  final MappableFields<CategoryDetails> fields = const {
    #timestamp: _f$timestamp,
    #category: _f$category,
    #read: _f$read,
    #clusters: _f$clusters,
  };

  static CategoryDetails _instantiate(DecodingData data) {
    return CategoryDetails(
      timestamp: data.dec(_f$timestamp),
      category: data.dec(_f$category),
      read: data.dec(_f$read),
      clusters: data.dec(_f$clusters),
    );
  }

  @override
  final Function instantiate = _instantiate;
}

mixin CategoryDetailsMappable {
  CategoryDetailsCopyWith<CategoryDetails, CategoryDetails, CategoryDetails>
  get copyWith => _CategoryDetailsCopyWithImpl(
    this as CategoryDetails,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CategoryDetailsMapper.ensureInitialized().stringifyValue(
      this as CategoryDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return CategoryDetailsMapper.ensureInitialized().equalsValue(
      this as CategoryDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return CategoryDetailsMapper.ensureInitialized().hashValue(
      this as CategoryDetails,
    );
  }
}

extension CategoryDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CategoryDetails, $Out> {
  CategoryDetailsCopyWith<$R, CategoryDetails, $Out> get $asCategoryDetails =>
      $base.as((v, t, t2) => _CategoryDetailsCopyWithImpl(v, t, t2));
}

abstract class CategoryDetailsCopyWith<$R, $In extends CategoryDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Cluster, ClusterCopyWith<$R, Cluster, Cluster>> get clusters;
  $R call({
    DateTime? timestamp,
    String? category,
    int? read,
    List<Cluster>? clusters,
  });
  CategoryDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CategoryDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CategoryDetails, $Out>
    implements CategoryDetailsCopyWith<$R, CategoryDetails, $Out> {
  _CategoryDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CategoryDetails> $mapper =
      CategoryDetailsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Cluster, ClusterCopyWith<$R, Cluster, Cluster>>
  get clusters => ListCopyWith(
    $value.clusters,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(clusters: v),
  );
  @override
  $R call({
    DateTime? timestamp,
    String? category,
    int? read,
    List<Cluster>? clusters,
  }) => $apply(
    FieldCopyWithData({
      if (timestamp != null) #timestamp: timestamp,
      if (category != null) #category: category,
      if (read != null) #read: read,
      if (clusters != null) #clusters: clusters,
    }),
  );
  @override
  CategoryDetails $make(CopyWithData data) => CategoryDetails(
    timestamp: data.get(#timestamp, or: $value.timestamp),
    category: data.get(#category, or: $value.category),
    read: data.get(#read, or: $value.read),
    clusters: data.get(#clusters, or: $value.clusters),
  );

  @override
  CategoryDetailsCopyWith<$R2, CategoryDetails, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CategoryDetailsCopyWithImpl($value, $cast, t);
}
