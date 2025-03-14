// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'perspective.dart';

class PerspectiveMapper extends ClassMapperBase<Perspective> {
  PerspectiveMapper._();

  static PerspectiveMapper? _instance;
  static PerspectiveMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PerspectiveMapper._());
      SourceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Perspective';

  static String _$text(Perspective v) => v.text;
  static const Field<Perspective, String> _f$text = Field('text', _$text);
  static List<Source> _$sources(Perspective v) => v.sources;
  static const Field<Perspective, List<Source>> _f$sources = Field(
    'sources',
    _$sources,
  );

  @override
  final MappableFields<Perspective> fields = const {
    #text: _f$text,
    #sources: _f$sources,
  };

  static Perspective _instantiate(DecodingData data) {
    return Perspective(text: data.dec(_f$text), sources: data.dec(_f$sources));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PerspectiveMappable {
  PerspectiveCopyWith<Perspective, Perspective, Perspective> get copyWith =>
      _PerspectiveCopyWithImpl(this as Perspective, $identity, $identity);
  @override
  String toString() {
    return PerspectiveMapper.ensureInitialized().stringifyValue(
      this as Perspective,
    );
  }

  @override
  bool operator ==(Object other) {
    return PerspectiveMapper.ensureInitialized().equalsValue(
      this as Perspective,
      other,
    );
  }

  @override
  int get hashCode {
    return PerspectiveMapper.ensureInitialized().hashValue(this as Perspective);
  }
}

extension PerspectiveValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Perspective, $Out> {
  PerspectiveCopyWith<$R, Perspective, $Out> get $asPerspective =>
      $base.as((v, t, t2) => _PerspectiveCopyWithImpl(v, t, t2));
}

abstract class PerspectiveCopyWith<$R, $In extends Perspective, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Source, SourceCopyWith<$R, Source, Source>> get sources;
  $R call({String? text, List<Source>? sources});
  PerspectiveCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PerspectiveCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Perspective, $Out>
    implements PerspectiveCopyWith<$R, Perspective, $Out> {
  _PerspectiveCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Perspective> $mapper =
      PerspectiveMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Source, SourceCopyWith<$R, Source, Source>> get sources =>
      ListCopyWith(
        $value.sources,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(sources: v),
      );
  @override
  $R call({String? text, List<Source>? sources}) => $apply(
    FieldCopyWithData({
      if (text != null) #text: text,
      if (sources != null) #sources: sources,
    }),
  );
  @override
  Perspective $make(CopyWithData data) => Perspective(
    text: data.get(#text, or: $value.text),
    sources: data.get(#sources, or: $value.sources),
  );

  @override
  PerspectiveCopyWith<$R2, Perspective, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PerspectiveCopyWithImpl($value, $cast, t);
}
