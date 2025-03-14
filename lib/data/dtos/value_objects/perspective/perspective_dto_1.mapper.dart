// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'perspective_dto_1.dart';

class PerspectiveDto1Mapper extends ClassMapperBase<PerspectiveDto1> {
  PerspectiveDto1Mapper._();

  static PerspectiveDto1Mapper? _instance;
  static PerspectiveDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PerspectiveDto1Mapper._());
      SourceDto1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PerspectiveDto1';

  static String _$text(PerspectiveDto1 v) => v.text;
  static const Field<PerspectiveDto1, String> _f$text = Field('text', _$text);
  static List<SourceDto1> _$sources(PerspectiveDto1 v) => v.sources;
  static const Field<PerspectiveDto1, List<SourceDto1>> _f$sources = Field(
    'sources',
    _$sources,
  );

  @override
  final MappableFields<PerspectiveDto1> fields = const {
    #text: _f$text,
    #sources: _f$sources,
  };

  static PerspectiveDto1 _instantiate(DecodingData data) {
    return PerspectiveDto1(
      text: data.dec(_f$text),
      sources: data.dec(_f$sources),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PerspectiveDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PerspectiveDto1>(map);
  }

  static PerspectiveDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<PerspectiveDto1>(json);
  }
}

mixin PerspectiveDto1Mappable {
  String toJson() {
    return PerspectiveDto1Mapper.ensureInitialized()
        .encodeJson<PerspectiveDto1>(this as PerspectiveDto1);
  }

  Map<String, dynamic> toMap() {
    return PerspectiveDto1Mapper.ensureInitialized().encodeMap<PerspectiveDto1>(
      this as PerspectiveDto1,
    );
  }

  PerspectiveDto1CopyWith<PerspectiveDto1, PerspectiveDto1, PerspectiveDto1>
  get copyWith => _PerspectiveDto1CopyWithImpl(
    this as PerspectiveDto1,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PerspectiveDto1Mapper.ensureInitialized().stringifyValue(
      this as PerspectiveDto1,
    );
  }

  @override
  bool operator ==(Object other) {
    return PerspectiveDto1Mapper.ensureInitialized().equalsValue(
      this as PerspectiveDto1,
      other,
    );
  }

  @override
  int get hashCode {
    return PerspectiveDto1Mapper.ensureInitialized().hashValue(
      this as PerspectiveDto1,
    );
  }
}

extension PerspectiveDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PerspectiveDto1, $Out> {
  PerspectiveDto1CopyWith<$R, PerspectiveDto1, $Out> get $asPerspectiveDto1 =>
      $base.as((v, t, t2) => _PerspectiveDto1CopyWithImpl(v, t, t2));
}

abstract class PerspectiveDto1CopyWith<$R, $In extends PerspectiveDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SourceDto1, SourceDto1CopyWith<$R, SourceDto1, SourceDto1>>
  get sources;
  $R call({String? text, List<SourceDto1>? sources});
  PerspectiveDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PerspectiveDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PerspectiveDto1, $Out>
    implements PerspectiveDto1CopyWith<$R, PerspectiveDto1, $Out> {
  _PerspectiveDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PerspectiveDto1> $mapper =
      PerspectiveDto1Mapper.ensureInitialized();
  @override
  ListCopyWith<$R, SourceDto1, SourceDto1CopyWith<$R, SourceDto1, SourceDto1>>
  get sources => ListCopyWith(
    $value.sources,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(sources: v),
  );
  @override
  $R call({String? text, List<SourceDto1>? sources}) => $apply(
    FieldCopyWithData({
      if (text != null) #text: text,
      if (sources != null) #sources: sources,
    }),
  );
  @override
  PerspectiveDto1 $make(CopyWithData data) => PerspectiveDto1(
    text: data.get(#text, or: $value.text),
    sources: data.get(#sources, or: $value.sources),
  );

  @override
  PerspectiveDto1CopyWith<$R2, PerspectiveDto1, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PerspectiveDto1CopyWithImpl($value, $cast, t);
}
