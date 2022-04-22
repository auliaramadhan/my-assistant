// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterInit init() {
    return const _RegisterInit();
  }

  _RegisterSeccess success(dynamic data) {
    return _RegisterSeccess(
      data,
    );
  }

  _RegisterSuccessVerified successVerified(dynamic data) {
    return _RegisterSuccessVerified(
      data,
    );
  }

  _RegisterFailure failure(String? errorText) {
    return _RegisterFailure(
      errorText,
    );
  }

  _RegisterLoading loading() {
    return const _RegisterLoading();
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$RegisterInitCopyWith<$Res> {
  factory _$RegisterInitCopyWith(
          _RegisterInit value, $Res Function(_RegisterInit) then) =
      __$RegisterInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterInitCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterInitCopyWith<$Res> {
  __$RegisterInitCopyWithImpl(
      _RegisterInit _value, $Res Function(_RegisterInit) _then)
      : super(_value, (v) => _then(v as _RegisterInit));

  @override
  _RegisterInit get _value => super._value as _RegisterInit;
}

/// @nodoc

class _$_RegisterInit implements _RegisterInit {
  const _$_RegisterInit();

  @override
  String toString() {
    return 'RegisterState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _RegisterInit implements RegisterState {
  const factory _RegisterInit() = _$_RegisterInit;
}

/// @nodoc
abstract class _$RegisterSeccessCopyWith<$Res> {
  factory _$RegisterSeccessCopyWith(
          _RegisterSeccess value, $Res Function(_RegisterSeccess) then) =
      __$RegisterSeccessCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$RegisterSeccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterSeccessCopyWith<$Res> {
  __$RegisterSeccessCopyWithImpl(
      _RegisterSeccess _value, $Res Function(_RegisterSeccess) _then)
      : super(_value, (v) => _then(v as _RegisterSeccess));

  @override
  _RegisterSeccess get _value => super._value as _RegisterSeccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_RegisterSeccess(
      data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$_RegisterSeccess implements _RegisterSeccess {
  const _$_RegisterSeccess(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'RegisterState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterSeccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$RegisterSeccessCopyWith<_RegisterSeccess> get copyWith =>
      __$RegisterSeccessCopyWithImpl<_RegisterSeccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterSeccess implements RegisterState {
  const factory _RegisterSeccess(dynamic data) = _$_RegisterSeccess;

  dynamic get data;
  @JsonKey(ignore: true)
  _$RegisterSeccessCopyWith<_RegisterSeccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterSuccessVerifiedCopyWith<$Res> {
  factory _$RegisterSuccessVerifiedCopyWith(_RegisterSuccessVerified value,
          $Res Function(_RegisterSuccessVerified) then) =
      __$RegisterSuccessVerifiedCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$RegisterSuccessVerifiedCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterSuccessVerifiedCopyWith<$Res> {
  __$RegisterSuccessVerifiedCopyWithImpl(_RegisterSuccessVerified _value,
      $Res Function(_RegisterSuccessVerified) _then)
      : super(_value, (v) => _then(v as _RegisterSuccessVerified));

  @override
  _RegisterSuccessVerified get _value =>
      super._value as _RegisterSuccessVerified;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_RegisterSuccessVerified(
      data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$_RegisterSuccessVerified implements _RegisterSuccessVerified {
  const _$_RegisterSuccessVerified(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'RegisterState.successVerified(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterSuccessVerified &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$RegisterSuccessVerifiedCopyWith<_RegisterSuccessVerified> get copyWith =>
      __$RegisterSuccessVerifiedCopyWithImpl<_RegisterSuccessVerified>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) {
    return successVerified(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) {
    return successVerified?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (successVerified != null) {
      return successVerified(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) {
    return successVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) {
    return successVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) {
    if (successVerified != null) {
      return successVerified(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccessVerified implements RegisterState {
  const factory _RegisterSuccessVerified(dynamic data) =
      _$_RegisterSuccessVerified;

  dynamic get data;
  @JsonKey(ignore: true)
  _$RegisterSuccessVerifiedCopyWith<_RegisterSuccessVerified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterFailureCopyWith<$Res> {
  factory _$RegisterFailureCopyWith(
          _RegisterFailure value, $Res Function(_RegisterFailure) then) =
      __$RegisterFailureCopyWithImpl<$Res>;
  $Res call({String? errorText});
}

/// @nodoc
class __$RegisterFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterFailureCopyWith<$Res> {
  __$RegisterFailureCopyWithImpl(
      _RegisterFailure _value, $Res Function(_RegisterFailure) _then)
      : super(_value, (v) => _then(v as _RegisterFailure));

  @override
  _RegisterFailure get _value => super._value as _RegisterFailure;

  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_RegisterFailure(
      errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterFailure implements _RegisterFailure {
  const _$_RegisterFailure(this.errorText);

  @override
  final String? errorText;

  @override
  String toString() {
    return 'RegisterState.failure(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterFailure &&
            const DeepCollectionEquality().equals(other.errorText, errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorText));

  @JsonKey(ignore: true)
  @override
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith =>
      __$RegisterFailureCopyWithImpl<_RegisterFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) {
    return failure(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) {
    return failure?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailure implements RegisterState {
  const factory _RegisterFailure(String? errorText) = _$_RegisterFailure;

  String? get errorText;
  @JsonKey(ignore: true)
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterLoadingCopyWith<$Res> {
  factory _$RegisterLoadingCopyWith(
          _RegisterLoading value, $Res Function(_RegisterLoading) then) =
      __$RegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterLoadingCopyWith<$Res> {
  __$RegisterLoadingCopyWithImpl(
      _RegisterLoading _value, $Res Function(_RegisterLoading) _then)
      : super(_value, (v) => _then(v as _RegisterLoading));

  @override
  _RegisterLoading get _value => super._value as _RegisterLoading;
}

/// @nodoc

class _$_RegisterLoading implements _RegisterLoading {
  const _$_RegisterLoading();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) successVerified,
    required TResult Function(String? errorText) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? successVerified,
    TResult Function(String? errorText)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInit value) init,
    required TResult Function(_RegisterSeccess value) success,
    required TResult Function(_RegisterSuccessVerified value) successVerified,
    required TResult Function(_RegisterFailure value) failure,
    required TResult Function(_RegisterLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInit value)? init,
    TResult Function(_RegisterSeccess value)? success,
    TResult Function(_RegisterSuccessVerified value)? successVerified,
    TResult Function(_RegisterFailure value)? failure,
    TResult Function(_RegisterLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoading implements RegisterState {
  const factory _RegisterLoading() = _$_RegisterLoading;
}
