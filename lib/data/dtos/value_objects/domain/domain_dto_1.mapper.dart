// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'domain_dto_1.dart';

class DomainDto1Mapper extends ClassMapperBase<DomainDto1> {
  DomainDto1Mapper._();

  static DomainDto1Mapper? _instance;
  static DomainDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DomainDto1Mapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DomainDto1';

  static String _$name(DomainDto1 v) => v.name;
  static const Field<DomainDto1, String> _f$name = Field('name', _$name);
  static String _$favicon(DomainDto1 v) => v.favicon;
  static const Field<DomainDto1, String> _f$favicon = Field(
    'favicon',
    _$favicon,
  );

  @override
  final MappableFields<DomainDto1> fields = const {
    #name: _f$name,
    #favicon: _f$favicon,
  };

  static DomainDto1 _instantiate(DecodingData data) {
    return DomainDto1(name: data.dec(_f$name), favicon: data.dec(_f$favicon));
  }

  @override
  final Function instantiate = _instantiate;

  static DomainDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DomainDto1>(map);
  }

  static DomainDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<DomainDto1>(json);
  }
}

mixin DomainDto1Mappable {
  String toJson() {
    return DomainDto1Mapper.ensureInitialized().encodeJson<DomainDto1>(
      this as DomainDto1,
    );
  }

  Map<String, dynamic> toMap() {
    return DomainDto1Mapper.ensureInitialized().encodeMap<DomainDto1>(
      this as DomainDto1,
    );
  }

  DomainDto1CopyWith<DomainDto1, DomainDto1, DomainDto1> get copyWith =>
      _DomainDto1CopyWithImpl(this as DomainDto1, $identity, $identity);
  @override
  String toString() {
    return DomainDto1Mapper.ensureInitialized().stringifyValue(
      this as DomainDto1,
    );
  }

  @override
  bool operator ==(Object other) {
    return DomainDto1Mapper.ensureInitialized().equalsValue(
      this as DomainDto1,
      other,
    );
  }

  @override
  int get hashCode {
    return DomainDto1Mapper.ensureInitialized().hashValue(this as DomainDto1);
  }
}

extension DomainDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DomainDto1, $Out> {
  DomainDto1CopyWith<$R, DomainDto1, $Out> get $asDomainDto1 =>
      $base.as((v, t, t2) => _DomainDto1CopyWithImpl(v, t, t2));
}

abstract class DomainDto1CopyWith<$R, $In extends DomainDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? favicon});
  DomainDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DomainDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DomainDto1, $Out>
    implements DomainDto1CopyWith<$R, DomainDto1, $Out> {
  _DomainDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DomainDto1> $mapper =
      DomainDto1Mapper.ensureInitialized();
  @override
  $R call({String? name, String? favicon}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (favicon != null) #favicon: favicon,
    }),
  );
  @override
  DomainDto1 $make(CopyWithData data) => DomainDto1(
    name: data.get(#name, or: $value.name),
    favicon: data.get(#favicon, or: $value.favicon),
  );

  @override
  DomainDto1CopyWith<$R2, DomainDto1, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DomainDto1CopyWithImpl($value, $cast, t);
}
