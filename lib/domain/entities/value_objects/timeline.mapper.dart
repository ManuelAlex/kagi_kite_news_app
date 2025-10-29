// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'timeline.dart';

class TimelineMapper extends ClassMapperBase<Timeline> {
  TimelineMapper._();

  static TimelineMapper? _instance;
  static TimelineMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimelineMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Timeline';

  static String _$date(Timeline v) => v.date;
  static const Field<Timeline, String> _f$date = Field('date', _$date);
  static String _$content(Timeline v) => v.content;
  static const Field<Timeline, String> _f$content = Field('content', _$content);

  @override
  final MappableFields<Timeline> fields = const {
    #date: _f$date,
    #content: _f$content,
  };

  static Timeline _instantiate(DecodingData data) {
    return Timeline(date: data.dec(_f$date), content: data.dec(_f$content));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin TimelineMappable {
  TimelineCopyWith<Timeline, Timeline, Timeline> get copyWith =>
      _TimelineCopyWithImpl(this as Timeline, $identity, $identity);
  @override
  String toString() {
    return TimelineMapper.ensureInitialized().stringifyValue(this as Timeline);
  }

  @override
  bool operator ==(Object other) {
    return TimelineMapper.ensureInitialized()
        .equalsValue(this as Timeline, other);
  }

  @override
  int get hashCode {
    return TimelineMapper.ensureInitialized().hashValue(this as Timeline);
  }
}

extension TimelineValueCopy<$R, $Out> on ObjectCopyWith<$R, Timeline, $Out> {
  TimelineCopyWith<$R, Timeline, $Out> get $asTimeline =>
      $base.as((v, t, t2) => _TimelineCopyWithImpl(v, t, t2));
}

abstract class TimelineCopyWith<$R, $In extends Timeline, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? date, String? content});
  TimelineCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TimelineCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Timeline, $Out>
    implements TimelineCopyWith<$R, Timeline, $Out> {
  _TimelineCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Timeline> $mapper =
      TimelineMapper.ensureInitialized();
  @override
  $R call({String? date, String? content}) => $apply(FieldCopyWithData(
      {if (date != null) #date: date, if (content != null) #content: content}));
  @override
  Timeline $make(CopyWithData data) => Timeline(
      date: data.get(#date, or: $value.date),
      content: data.get(#content, or: $value.content));

  @override
  TimelineCopyWith<$R2, Timeline, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TimelineCopyWithImpl($value, $cast, t);
}
