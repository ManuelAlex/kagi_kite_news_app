// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'source_dto_1.dart';

class SourceDto1Mapper extends ClassMapperBase<SourceDto1> {
  SourceDto1Mapper._();

  static SourceDto1Mapper? _instance;
  static SourceDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SourceDto1Mapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SourceDto1';

  static String _$name(SourceDto1 v) => v.name;
  static const Field<SourceDto1, String> _f$name = Field('name', _$name);
  static String _$url(SourceDto1 v) => v.url;
  static const Field<SourceDto1, String> _f$url = Field('url', _$url);

  @override
  final MappableFields<SourceDto1> fields = const {
    #name: _f$name,
    #url: _f$url,
  };

  static SourceDto1 _instantiate(DecodingData data) {
    return SourceDto1(name: data.dec(_f$name), url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static SourceDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SourceDto1>(map);
  }

  static SourceDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<SourceDto1>(json);
  }
}

mixin SourceDto1Mappable {
  String toJson() {
    return SourceDto1Mapper.ensureInitialized()
        .encodeJson<SourceDto1>(this as SourceDto1);
  }

  Map<String, dynamic> toMap() {
    return SourceDto1Mapper.ensureInitialized()
        .encodeMap<SourceDto1>(this as SourceDto1);
  }

  SourceDto1CopyWith<SourceDto1, SourceDto1, SourceDto1> get copyWith =>
      _SourceDto1CopyWithImpl(this as SourceDto1, $identity, $identity);
  @override
  String toString() {
    return SourceDto1Mapper.ensureInitialized()
        .stringifyValue(this as SourceDto1);
  }

  @override
  bool operator ==(Object other) {
    return SourceDto1Mapper.ensureInitialized()
        .equalsValue(this as SourceDto1, other);
  }

  @override
  int get hashCode {
    return SourceDto1Mapper.ensureInitialized().hashValue(this as SourceDto1);
  }
}

extension SourceDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SourceDto1, $Out> {
  SourceDto1CopyWith<$R, SourceDto1, $Out> get $asSourceDto1 =>
      $base.as((v, t, t2) => _SourceDto1CopyWithImpl(v, t, t2));
}

abstract class SourceDto1CopyWith<$R, $In extends SourceDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? url});
  SourceDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SourceDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SourceDto1, $Out>
    implements SourceDto1CopyWith<$R, SourceDto1, $Out> {
  _SourceDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SourceDto1> $mapper =
      SourceDto1Mapper.ensureInitialized();
  @override
  $R call({String? name, String? url}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (url != null) #url: url}));
  @override
  SourceDto1 $make(CopyWithData data) => SourceDto1(
      name: data.get(#name, or: $value.name),
      url: data.get(#url, or: $value.url));

  @override
  SourceDto1CopyWith<$R2, SourceDto1, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SourceDto1CopyWithImpl($value, $cast, t);
}
