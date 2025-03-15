// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'article.dart';

class ArticleMapper extends ClassMapperBase<Article> {
  ArticleMapper._();

  static ArticleMapper? _instance;
  static ArticleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArticleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Article';

  static String _$title(Article v) => v.title;
  static const Field<Article, String> _f$title = Field('title', _$title);
  static String _$link(Article v) => v.link;
  static const Field<Article, String> _f$link = Field('link', _$link);
  static String _$domain(Article v) => v.domain;
  static const Field<Article, String> _f$domain = Field('domain', _$domain);
  static DateTime _$date(Article v) => v.date;
  static const Field<Article, DateTime> _f$date = Field('date', _$date);
  static String? _$image(Article v) => v.image;
  static const Field<Article, String> _f$image =
      Field('image', _$image, opt: true);
  static String? _$imageCaption(Article v) => v.imageCaption;
  static const Field<Article, String> _f$imageCaption =
      Field('imageCaption', _$imageCaption, opt: true);

  @override
  final MappableFields<Article> fields = const {
    #title: _f$title,
    #link: _f$link,
    #domain: _f$domain,
    #date: _f$date,
    #image: _f$image,
    #imageCaption: _f$imageCaption,
  };

  static Article _instantiate(DecodingData data) {
    return Article(
        title: data.dec(_f$title),
        link: data.dec(_f$link),
        domain: data.dec(_f$domain),
        date: data.dec(_f$date),
        image: data.dec(_f$image),
        imageCaption: data.dec(_f$imageCaption));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ArticleMappable {
  ArticleCopyWith<Article, Article, Article> get copyWith =>
      _ArticleCopyWithImpl(this as Article, $identity, $identity);
  @override
  String toString() {
    return ArticleMapper.ensureInitialized().stringifyValue(this as Article);
  }

  @override
  bool operator ==(Object other) {
    return ArticleMapper.ensureInitialized()
        .equalsValue(this as Article, other);
  }

  @override
  int get hashCode {
    return ArticleMapper.ensureInitialized().hashValue(this as Article);
  }
}

extension ArticleValueCopy<$R, $Out> on ObjectCopyWith<$R, Article, $Out> {
  ArticleCopyWith<$R, Article, $Out> get $asArticle =>
      $base.as((v, t, t2) => _ArticleCopyWithImpl(v, t, t2));
}

abstract class ArticleCopyWith<$R, $In extends Article, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? title,
      String? link,
      String? domain,
      DateTime? date,
      String? image,
      String? imageCaption});
  ArticleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArticleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Article, $Out>
    implements ArticleCopyWith<$R, Article, $Out> {
  _ArticleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Article> $mapper =
      ArticleMapper.ensureInitialized();
  @override
  $R call(
          {String? title,
          String? link,
          String? domain,
          DateTime? date,
          Object? image = $none,
          Object? imageCaption = $none}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (link != null) #link: link,
        if (domain != null) #domain: domain,
        if (date != null) #date: date,
        if (image != $none) #image: image,
        if (imageCaption != $none) #imageCaption: imageCaption
      }));
  @override
  Article $make(CopyWithData data) => Article(
      title: data.get(#title, or: $value.title),
      link: data.get(#link, or: $value.link),
      domain: data.get(#domain, or: $value.domain),
      date: data.get(#date, or: $value.date),
      image: data.get(#image, or: $value.image),
      imageCaption: data.get(#imageCaption, or: $value.imageCaption));

  @override
  ArticleCopyWith<$R2, Article, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ArticleCopyWithImpl($value, $cast, t);
}
