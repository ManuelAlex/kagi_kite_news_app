// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'timeline_dto_1.dart';

class TimelineDto1Mapper extends ClassMapperBase<TimelineDto1> {
  TimelineDto1Mapper._();

  static TimelineDto1Mapper? _instance;
  static TimelineDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimelineDto1Mapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TimelineDto1';

  static String _$date(TimelineDto1 v) => v.date;
  static const Field<TimelineDto1, String> _f$date = Field('date', _$date);
  static String _$content(TimelineDto1 v) => v.content;
  static const Field<TimelineDto1, String> _f$content =
      Field('content', _$content);

  @override
  final MappableFields<TimelineDto1> fields = const {
    #date: _f$date,
    #content: _f$content,
  };

  static TimelineDto1 _instantiate(DecodingData data) {
    return TimelineDto1(date: data.dec(_f$date), content: data.dec(_f$content));
  }

  @override
  final Function instantiate = _instantiate;

  static TimelineDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TimelineDto1>(map);
  }

  static TimelineDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<TimelineDto1>(json);
  }
}

mixin TimelineDto1Mappable {
  String toJson() {
    return TimelineDto1Mapper.ensureInitialized()
        .encodeJson<TimelineDto1>(this as TimelineDto1);
  }

  Map<String, dynamic> toMap() {
    return TimelineDto1Mapper.ensureInitialized()
        .encodeMap<TimelineDto1>(this as TimelineDto1);
  }

  TimelineDto1CopyWith<TimelineDto1, TimelineDto1, TimelineDto1> get copyWith =>
      _TimelineDto1CopyWithImpl(this as TimelineDto1, $identity, $identity);
  @override
  String toString() {
    return TimelineDto1Mapper.ensureInitialized()
        .stringifyValue(this as TimelineDto1);
  }

  @override
  bool operator ==(Object other) {
    return TimelineDto1Mapper.ensureInitialized()
        .equalsValue(this as TimelineDto1, other);
  }

  @override
  int get hashCode {
    return TimelineDto1Mapper.ensureInitialized()
        .hashValue(this as TimelineDto1);
  }
}

extension TimelineDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TimelineDto1, $Out> {
  TimelineDto1CopyWith<$R, TimelineDto1, $Out> get $asTimelineDto1 =>
      $base.as((v, t, t2) => _TimelineDto1CopyWithImpl(v, t, t2));
}

abstract class TimelineDto1CopyWith<$R, $In extends TimelineDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? date, String? content});
  TimelineDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TimelineDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TimelineDto1, $Out>
    implements TimelineDto1CopyWith<$R, TimelineDto1, $Out> {
  _TimelineDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TimelineDto1> $mapper =
      TimelineDto1Mapper.ensureInitialized();
  @override
  $R call({String? date, String? content}) => $apply(FieldCopyWithData(
      {if (date != null) #date: date, if (content != null) #content: content}));
  @override
  TimelineDto1 $make(CopyWithData data) => TimelineDto1(
      date: data.get(#date, or: $value.date),
      content: data.get(#content, or: $value.content));

  @override
  TimelineDto1CopyWith<$R2, TimelineDto1, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TimelineDto1CopyWithImpl($value, $cast, t);
}
