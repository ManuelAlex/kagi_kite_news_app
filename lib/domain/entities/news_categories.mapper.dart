// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_categories.dart';

class NewsCategoriesMapper extends ClassMapperBase<NewsCategories> {
  NewsCategoriesMapper._();

  static NewsCategoriesMapper? _instance;
  static NewsCategoriesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsCategoriesMapper._());
      CategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewsCategories';

  static DateTime _$timestamp(NewsCategories v) => v.timestamp;
  static const Field<NewsCategories, DateTime> _f$timestamp =
      Field('timestamp', _$timestamp);
  static List<Category> _$categories(NewsCategories v) => v.categories;
  static const Field<NewsCategories, List<Category>> _f$categories =
      Field('categories', _$categories);

  @override
  final MappableFields<NewsCategories> fields = const {
    #timestamp: _f$timestamp,
    #categories: _f$categories,
  };

  static NewsCategories _instantiate(DecodingData data) {
    return NewsCategories(
        timestamp: data.dec(_f$timestamp), categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin NewsCategoriesMappable {
  NewsCategoriesCopyWith<NewsCategories, NewsCategories, NewsCategories>
      get copyWith => _NewsCategoriesCopyWithImpl(
          this as NewsCategories, $identity, $identity);
  @override
  String toString() {
    return NewsCategoriesMapper.ensureInitialized()
        .stringifyValue(this as NewsCategories);
  }

  @override
  bool operator ==(Object other) {
    return NewsCategoriesMapper.ensureInitialized()
        .equalsValue(this as NewsCategories, other);
  }

  @override
  int get hashCode {
    return NewsCategoriesMapper.ensureInitialized()
        .hashValue(this as NewsCategories);
  }
}

extension NewsCategoriesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NewsCategories, $Out> {
  NewsCategoriesCopyWith<$R, NewsCategories, $Out> get $asNewsCategories =>
      $base.as((v, t, t2) => _NewsCategoriesCopyWithImpl(v, t, t2));
}

abstract class NewsCategoriesCopyWith<$R, $In extends NewsCategories, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>
      get categories;
  $R call({DateTime? timestamp, List<Category>? categories});
  NewsCategoriesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NewsCategoriesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewsCategories, $Out>
    implements NewsCategoriesCopyWith<$R, NewsCategories, $Out> {
  _NewsCategoriesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewsCategories> $mapper =
      NewsCategoriesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>
      get categories => ListCopyWith($value.categories,
          (v, t) => v.copyWith.$chain(t), (v) => call(categories: v));
  @override
  $R call({DateTime? timestamp, List<Category>? categories}) =>
      $apply(FieldCopyWithData({
        if (timestamp != null) #timestamp: timestamp,
        if (categories != null) #categories: categories
      }));
  @override
  NewsCategories $make(CopyWithData data) => NewsCategories(
      timestamp: data.get(#timestamp, or: $value.timestamp),
      categories: data.get(#categories, or: $value.categories));

  @override
  NewsCategoriesCopyWith<$R2, NewsCategories, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NewsCategoriesCopyWithImpl($value, $cast, t);
}
