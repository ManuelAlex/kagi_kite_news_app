// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'article_dto_1.dart';

class ArticleDto1Mapper extends ClassMapperBase<ArticleDto1> {
  ArticleDto1Mapper._();

  static ArticleDto1Mapper? _instance;
  static ArticleDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArticleDto1Mapper._());
      MapperContainer.globals.useAll(<MapperBase<Object>>[
        DatetimeJsonMapper(),
      ]);
    }
    return _instance!;
  }

  @override
  final String id = 'ArticleDto1';

  static String _$title(ArticleDto1 v) => v.title;
  static const Field<ArticleDto1, String> _f$title = Field('title', _$title);
  static String _$link(ArticleDto1 v) => v.link;
  static const Field<ArticleDto1, String> _f$link = Field('link', _$link);
  static String _$domain(ArticleDto1 v) => v.domain;
  static const Field<ArticleDto1, String> _f$domain = Field('domain', _$domain);
  static DateTime _$date(ArticleDto1 v) => v.date;
  static const Field<ArticleDto1, DateTime> _f$date = Field('date', _$date);
  static String? _$image(ArticleDto1 v) => v.image;
  static const Field<ArticleDto1, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static String? _$imageCaption(ArticleDto1 v) => v.imageCaption;
  static const Field<ArticleDto1, String> _f$imageCaption = Field(
    'imageCaption',
    _$imageCaption,
    key: r'image_caption',
    opt: true,
  );

  @override
  final MappableFields<ArticleDto1> fields = const {
    #title: _f$title,
    #link: _f$link,
    #domain: _f$domain,
    #date: _f$date,
    #image: _f$image,
    #imageCaption: _f$imageCaption,
  };

  static ArticleDto1 _instantiate(DecodingData data) {
    return ArticleDto1(
      title: data.dec(_f$title),
      link: data.dec(_f$link),
      domain: data.dec(_f$domain),
      date: data.dec(_f$date),
      image: data.dec(_f$image),
      imageCaption: data.dec(_f$imageCaption),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ArticleDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArticleDto1>(map);
  }

  static ArticleDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<ArticleDto1>(json);
  }
}

mixin ArticleDto1Mappable {
  String toJson() {
    return ArticleDto1Mapper.ensureInitialized().encodeJson<ArticleDto1>(
      this as ArticleDto1,
    );
  }

  Map<String, dynamic> toMap() {
    return ArticleDto1Mapper.ensureInitialized().encodeMap<ArticleDto1>(
      this as ArticleDto1,
    );
  }

  ArticleDto1CopyWith<ArticleDto1, ArticleDto1, ArticleDto1> get copyWith =>
      _ArticleDto1CopyWithImpl(this as ArticleDto1, $identity, $identity);
  @override
  String toString() {
    return ArticleDto1Mapper.ensureInitialized().stringifyValue(
      this as ArticleDto1,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArticleDto1Mapper.ensureInitialized().equalsValue(
      this as ArticleDto1,
      other,
    );
  }

  @override
  int get hashCode {
    return ArticleDto1Mapper.ensureInitialized().hashValue(this as ArticleDto1);
  }
}

extension ArticleDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArticleDto1, $Out> {
  ArticleDto1CopyWith<$R, ArticleDto1, $Out> get $asArticleDto1 =>
      $base.as((v, t, t2) => _ArticleDto1CopyWithImpl(v, t, t2));
}

abstract class ArticleDto1CopyWith<$R, $In extends ArticleDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? title,
    String? link,
    String? domain,
    DateTime? date,
    String? image,
    String? imageCaption,
  });
  ArticleDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArticleDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArticleDto1, $Out>
    implements ArticleDto1CopyWith<$R, ArticleDto1, $Out> {
  _ArticleDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArticleDto1> $mapper =
      ArticleDto1Mapper.ensureInitialized();
  @override
  $R call({
    String? title,
    String? link,
    String? domain,
    DateTime? date,
    Object? image = $none,
    Object? imageCaption = $none,
  }) => $apply(
    FieldCopyWithData({
      if (title != null) #title: title,
      if (link != null) #link: link,
      if (domain != null) #domain: domain,
      if (date != null) #date: date,
      if (image != $none) #image: image,
      if (imageCaption != $none) #imageCaption: imageCaption,
    }),
  );
  @override
  ArticleDto1 $make(CopyWithData data) => ArticleDto1(
    title: data.get(#title, or: $value.title),
    link: data.get(#link, or: $value.link),
    domain: data.get(#domain, or: $value.domain),
    date: data.get(#date, or: $value.date),
    image: data.get(#image, or: $value.image),
    imageCaption: data.get(#imageCaption, or: $value.imageCaption),
  );

  @override
  ArticleDto1CopyWith<$R2, ArticleDto1, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArticleDto1CopyWithImpl($value, $cast, t);
}
