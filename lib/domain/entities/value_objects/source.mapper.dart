// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'source.dart';

class SourceMapper extends ClassMapperBase<Source> {
  SourceMapper._();

  static SourceMapper? _instance;
  static SourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SourceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Source';

  static String _$name(Source v) => v.name;
  static const Field<Source, String> _f$name = Field('name', _$name);
  static String _$url(Source v) => v.url;
  static const Field<Source, String> _f$url = Field('url', _$url);

  @override
  final MappableFields<Source> fields = const {#name: _f$name, #url: _f$url};

  static Source _instantiate(DecodingData data) {
    return Source(name: data.dec(_f$name), url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin SourceMappable {
  SourceCopyWith<Source, Source, Source> get copyWith =>
      _SourceCopyWithImpl(this as Source, $identity, $identity);
  @override
  String toString() {
    return SourceMapper.ensureInitialized().stringifyValue(this as Source);
  }

  @override
  bool operator ==(Object other) {
    return SourceMapper.ensureInitialized().equalsValue(this as Source, other);
  }

  @override
  int get hashCode {
    return SourceMapper.ensureInitialized().hashValue(this as Source);
  }
}

extension SourceValueCopy<$R, $Out> on ObjectCopyWith<$R, Source, $Out> {
  SourceCopyWith<$R, Source, $Out> get $asSource =>
      $base.as((v, t, t2) => _SourceCopyWithImpl(v, t, t2));
}

abstract class SourceCopyWith<$R, $In extends Source, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? url});
  SourceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SourceCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Source, $Out>
    implements SourceCopyWith<$R, Source, $Out> {
  _SourceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Source> $mapper = SourceMapper.ensureInitialized();
  @override
  $R call({String? name, String? url}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (url != null) #url: url,
    }),
  );
  @override
  Source $make(CopyWithData data) => Source(
    name: data.get(#name, or: $value.name),
    url: data.get(#url, or: $value.url),
  );

  @override
  SourceCopyWith<$R2, Source, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SourceCopyWithImpl($value, $cast, t);
}
