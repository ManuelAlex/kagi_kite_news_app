// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'domain.dart';

class DomainMapper extends ClassMapperBase<Domain> {
  DomainMapper._();

  static DomainMapper? _instance;
  static DomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DomainMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Domain';

  static String _$name(Domain v) => v.name;
  static const Field<Domain, String> _f$name = Field('name', _$name);
  static String _$favicon(Domain v) => v.favicon;
  static const Field<Domain, String> _f$favicon = Field('favicon', _$favicon);

  @override
  final MappableFields<Domain> fields = const {
    #name: _f$name,
    #favicon: _f$favicon,
  };

  static Domain _instantiate(DecodingData data) {
    return Domain(name: data.dec(_f$name), favicon: data.dec(_f$favicon));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DomainMappable {
  DomainCopyWith<Domain, Domain, Domain> get copyWith =>
      _DomainCopyWithImpl(this as Domain, $identity, $identity);
  @override
  String toString() {
    return DomainMapper.ensureInitialized().stringifyValue(this as Domain);
  }

  @override
  bool operator ==(Object other) {
    return DomainMapper.ensureInitialized().equalsValue(this as Domain, other);
  }

  @override
  int get hashCode {
    return DomainMapper.ensureInitialized().hashValue(this as Domain);
  }
}

extension DomainValueCopy<$R, $Out> on ObjectCopyWith<$R, Domain, $Out> {
  DomainCopyWith<$R, Domain, $Out> get $asDomain =>
      $base.as((v, t, t2) => _DomainCopyWithImpl(v, t, t2));
}

abstract class DomainCopyWith<$R, $In extends Domain, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? favicon});
  DomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DomainCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Domain, $Out>
    implements DomainCopyWith<$R, Domain, $Out> {
  _DomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Domain> $mapper = DomainMapper.ensureInitialized();
  @override
  $R call({String? name, String? favicon}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (favicon != null) #favicon: favicon}));
  @override
  Domain $make(CopyWithData data) => Domain(
      name: data.get(#name, or: $value.name),
      favicon: data.get(#favicon, or: $value.favicon));

  @override
  DomainCopyWith<$R2, Domain, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DomainCopyWithImpl($value, $cast, t);
}
