// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'on_this_day_event_dto_1.dart';

class OnThisDayEventDto1Mapper extends ClassMapperBase<OnThisDayEventDto1> {
  OnThisDayEventDto1Mapper._();

  static OnThisDayEventDto1Mapper? _instance;
  static OnThisDayEventDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OnThisDayEventDto1Mapper._());
      MapperContainer.globals
          .useAll(<MapperBase<Object>>[DatetimeJsonMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'OnThisDayEventDto1';

  static String _$year(OnThisDayEventDto1 v) => v.year;
  static const Field<OnThisDayEventDto1, String> _f$year =
      Field('year', _$year);
  static String _$content(OnThisDayEventDto1 v) => v.content;
  static const Field<OnThisDayEventDto1, String> _f$content =
      Field('content', _$content);
  static double _$sortYear(OnThisDayEventDto1 v) => v.sortYear;
  static const Field<OnThisDayEventDto1, double> _f$sortYear =
      Field('sortYear', _$sortYear, key: r'sort_year');
  static String _$type(OnThisDayEventDto1 v) => v.type;
  static const Field<OnThisDayEventDto1, String> _f$type =
      Field('type', _$type);

  @override
  final MappableFields<OnThisDayEventDto1> fields = const {
    #year: _f$year,
    #content: _f$content,
    #sortYear: _f$sortYear,
    #type: _f$type,
  };

  static OnThisDayEventDto1 _instantiate(DecodingData data) {
    return OnThisDayEventDto1(
        year: data.dec(_f$year),
        content: data.dec(_f$content),
        sortYear: data.dec(_f$sortYear),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static OnThisDayEventDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OnThisDayEventDto1>(map);
  }

  static OnThisDayEventDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<OnThisDayEventDto1>(json);
  }
}

mixin OnThisDayEventDto1Mappable {
  String toJson() {
    return OnThisDayEventDto1Mapper.ensureInitialized()
        .encodeJson<OnThisDayEventDto1>(this as OnThisDayEventDto1);
  }

  Map<String, dynamic> toMap() {
    return OnThisDayEventDto1Mapper.ensureInitialized()
        .encodeMap<OnThisDayEventDto1>(this as OnThisDayEventDto1);
  }

  OnThisDayEventDto1CopyWith<OnThisDayEventDto1, OnThisDayEventDto1,
          OnThisDayEventDto1>
      get copyWith => _OnThisDayEventDto1CopyWithImpl(
          this as OnThisDayEventDto1, $identity, $identity);
  @override
  String toString() {
    return OnThisDayEventDto1Mapper.ensureInitialized()
        .stringifyValue(this as OnThisDayEventDto1);
  }

  @override
  bool operator ==(Object other) {
    return OnThisDayEventDto1Mapper.ensureInitialized()
        .equalsValue(this as OnThisDayEventDto1, other);
  }

  @override
  int get hashCode {
    return OnThisDayEventDto1Mapper.ensureInitialized()
        .hashValue(this as OnThisDayEventDto1);
  }
}

extension OnThisDayEventDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OnThisDayEventDto1, $Out> {
  OnThisDayEventDto1CopyWith<$R, OnThisDayEventDto1, $Out>
      get $asOnThisDayEventDto1 =>
          $base.as((v, t, t2) => _OnThisDayEventDto1CopyWithImpl(v, t, t2));
}

abstract class OnThisDayEventDto1CopyWith<$R, $In extends OnThisDayEventDto1,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? year, String? content, double? sortYear, String? type});
  OnThisDayEventDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OnThisDayEventDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OnThisDayEventDto1, $Out>
    implements OnThisDayEventDto1CopyWith<$R, OnThisDayEventDto1, $Out> {
  _OnThisDayEventDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OnThisDayEventDto1> $mapper =
      OnThisDayEventDto1Mapper.ensureInitialized();
  @override
  $R call({String? year, String? content, double? sortYear, String? type}) =>
      $apply(FieldCopyWithData({
        if (year != null) #year: year,
        if (content != null) #content: content,
        if (sortYear != null) #sortYear: sortYear,
        if (type != null) #type: type
      }));
  @override
  OnThisDayEventDto1 $make(CopyWithData data) => OnThisDayEventDto1(
      year: data.get(#year, or: $value.year),
      content: data.get(#content, or: $value.content),
      sortYear: data.get(#sortYear, or: $value.sortYear),
      type: data.get(#type, or: $value.type));

  @override
  OnThisDayEventDto1CopyWith<$R2, OnThisDayEventDto1, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OnThisDayEventDto1CopyWithImpl($value, $cast, t);
}
