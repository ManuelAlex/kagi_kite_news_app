// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'on_this_day_event.dart';

class OnThisDayEventMapper extends ClassMapperBase<OnThisDayEvent> {
  OnThisDayEventMapper._();

  static OnThisDayEventMapper? _instance;
  static OnThisDayEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OnThisDayEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OnThisDayEvent';

  static String _$year(OnThisDayEvent v) => v.year;
  static const Field<OnThisDayEvent, String> _f$year = Field('year', _$year);
  static String _$content(OnThisDayEvent v) => v.content;
  static const Field<OnThisDayEvent, String> _f$content =
      Field('content', _$content);
  static double _$sortYear(OnThisDayEvent v) => v.sortYear;
  static const Field<OnThisDayEvent, double> _f$sortYear =
      Field('sortYear', _$sortYear);
  static String _$type(OnThisDayEvent v) => v.type;
  static const Field<OnThisDayEvent, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<OnThisDayEvent> fields = const {
    #year: _f$year,
    #content: _f$content,
    #sortYear: _f$sortYear,
    #type: _f$type,
  };

  static OnThisDayEvent _instantiate(DecodingData data) {
    return OnThisDayEvent(
        year: data.dec(_f$year),
        content: data.dec(_f$content),
        sortYear: data.dec(_f$sortYear),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin OnThisDayEventMappable {
  OnThisDayEventCopyWith<OnThisDayEvent, OnThisDayEvent, OnThisDayEvent>
      get copyWith => _OnThisDayEventCopyWithImpl(
          this as OnThisDayEvent, $identity, $identity);
  @override
  String toString() {
    return OnThisDayEventMapper.ensureInitialized()
        .stringifyValue(this as OnThisDayEvent);
  }

  @override
  bool operator ==(Object other) {
    return OnThisDayEventMapper.ensureInitialized()
        .equalsValue(this as OnThisDayEvent, other);
  }

  @override
  int get hashCode {
    return OnThisDayEventMapper.ensureInitialized()
        .hashValue(this as OnThisDayEvent);
  }
}

extension OnThisDayEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OnThisDayEvent, $Out> {
  OnThisDayEventCopyWith<$R, OnThisDayEvent, $Out> get $asOnThisDayEvent =>
      $base.as((v, t, t2) => _OnThisDayEventCopyWithImpl(v, t, t2));
}

abstract class OnThisDayEventCopyWith<$R, $In extends OnThisDayEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? year, String? content, double? sortYear, String? type});
  OnThisDayEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OnThisDayEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OnThisDayEvent, $Out>
    implements OnThisDayEventCopyWith<$R, OnThisDayEvent, $Out> {
  _OnThisDayEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OnThisDayEvent> $mapper =
      OnThisDayEventMapper.ensureInitialized();
  @override
  $R call({String? year, String? content, double? sortYear, String? type}) =>
      $apply(FieldCopyWithData({
        if (year != null) #year: year,
        if (content != null) #content: content,
        if (sortYear != null) #sortYear: sortYear,
        if (type != null) #type: type
      }));
  @override
  OnThisDayEvent $make(CopyWithData data) => OnThisDayEvent(
      year: data.get(#year, or: $value.year),
      content: data.get(#content, or: $value.content),
      sortYear: data.get(#sortYear, or: $value.sortYear),
      type: data.get(#type, or: $value.type));

  @override
  OnThisDayEventCopyWith<$R2, OnThisDayEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OnThisDayEventCopyWithImpl($value, $cast, t);
}
