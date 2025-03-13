// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_error.dart';

class ApiErrorMapper extends ClassMapperBase<ApiError> {
  ApiErrorMapper._();

  static ApiErrorMapper? _instance;
  static ApiErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApiError';

  static String _$code(ApiError v) => v.code;
  static const Field<ApiError, String> _f$code = Field('code', _$code);
  static String? _$message(ApiError v) => v.message;
  static const Field<ApiError, String> _f$message =
      Field('message', _$message, opt: true);

  @override
  final MappableFields<ApiError> fields = const {
    #code: _f$code,
    #message: _f$message,
  };

  static ApiError _instantiate(DecodingData data) {
    return ApiError(code: data.dec(_f$code), message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiError>(map);
  }

  static ApiError fromJson(String json) {
    return ensureInitialized().decodeJson<ApiError>(json);
  }
}

mixin ApiErrorMappable {
  String toJson() {
    return ApiErrorMapper.ensureInitialized()
        .encodeJson<ApiError>(this as ApiError);
  }

  Map<String, dynamic> toMap() {
    return ApiErrorMapper.ensureInitialized()
        .encodeMap<ApiError>(this as ApiError);
  }

  ApiErrorCopyWith<ApiError, ApiError, ApiError> get copyWith =>
      _ApiErrorCopyWithImpl(this as ApiError, $identity, $identity);
  @override
  String toString() {
    return ApiErrorMapper.ensureInitialized().stringifyValue(this as ApiError);
  }

  @override
  bool operator ==(Object other) {
    return ApiErrorMapper.ensureInitialized()
        .equalsValue(this as ApiError, other);
  }

  @override
  int get hashCode {
    return ApiErrorMapper.ensureInitialized().hashValue(this as ApiError);
  }
}

extension ApiErrorValueCopy<$R, $Out> on ObjectCopyWith<$R, ApiError, $Out> {
  ApiErrorCopyWith<$R, ApiError, $Out> get $asApiError =>
      $base.as((v, t, t2) => _ApiErrorCopyWithImpl(v, t, t2));
}

abstract class ApiErrorCopyWith<$R, $In extends ApiError, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? code, String? message});
  ApiErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiError, $Out>
    implements ApiErrorCopyWith<$R, ApiError, $Out> {
  _ApiErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiError> $mapper =
      ApiErrorMapper.ensureInitialized();
  @override
  $R call({String? code, Object? message = $none}) => $apply(FieldCopyWithData({
        if (code != null) #code: code,
        if (message != $none) #message: message
      }));
  @override
  ApiError $make(CopyWithData data) => ApiError(
      code: data.get(#code, or: $value.code),
      message: data.get(#message, or: $value.message));

  @override
  ApiErrorCopyWith<$R2, ApiError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ApiErrorCopyWithImpl($value, $cast, t);
}
