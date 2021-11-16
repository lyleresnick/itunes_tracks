// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_use_case_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackUseCaseOutputTearOff {
  const _$TrackUseCaseOutputTearOff();

  _Model model(TrackPresentationModel model) {
    return _Model(
      model,
    );
  }

  _Error error(String description) {
    return _Error(
      description,
    );
  }
}

/// @nodoc
const $TrackUseCaseOutput = _$TrackUseCaseOutputTearOff();

/// @nodoc
mixin _$TrackUseCaseOutput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackPresentationModel model) model,
    required TResult Function(String description) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Model value) model,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackUseCaseOutputCopyWith<$Res> {
  factory $TrackUseCaseOutputCopyWith(
          TrackUseCaseOutput value, $Res Function(TrackUseCaseOutput) then) =
      _$TrackUseCaseOutputCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackUseCaseOutputCopyWithImpl<$Res>
    implements $TrackUseCaseOutputCopyWith<$Res> {
  _$TrackUseCaseOutputCopyWithImpl(this._value, this._then);

  final TrackUseCaseOutput _value;
  // ignore: unused_field
  final $Res Function(TrackUseCaseOutput) _then;
}

/// @nodoc
abstract class _$ModelCopyWith<$Res> {
  factory _$ModelCopyWith(_Model value, $Res Function(_Model) then) =
      __$ModelCopyWithImpl<$Res>;
  $Res call({TrackPresentationModel model});

  $TrackPresentationModelCopyWith<$Res> get model;
}

/// @nodoc
class __$ModelCopyWithImpl<$Res> extends _$TrackUseCaseOutputCopyWithImpl<$Res>
    implements _$ModelCopyWith<$Res> {
  __$ModelCopyWithImpl(_Model _value, $Res Function(_Model) _then)
      : super(_value, (v) => _then(v as _Model));

  @override
  _Model get _value => super._value as _Model;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_Model(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TrackPresentationModel,
    ));
  }

  @override
  $TrackPresentationModelCopyWith<$Res> get model {
    return $TrackPresentationModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_Model implements _Model {
  const _$_Model(this.model);

  @override
  final TrackPresentationModel model;

  @override
  String toString() {
    return 'TrackUseCaseOutput.model(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Model &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$ModelCopyWith<_Model> get copyWith =>
      __$ModelCopyWithImpl<_Model>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackPresentationModel model) model,
    required TResult Function(String description) error,
  }) {
    return model(this.model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
  }) {
    return model?.call(this.model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this.model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Model value) model,
    required TResult Function(_Error value) error,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }
}

abstract class _Model implements TrackUseCaseOutput {
  const factory _Model(TrackPresentationModel model) = _$_Model;

  TrackPresentationModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModelCopyWith<_Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TrackUseCaseOutputCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_Error(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'TrackUseCaseOutput.error(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TrackPresentationModel model) model,
    required TResult Function(String description) error,
  }) {
    return error(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
  }) {
    return error?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackPresentationModel model)? model,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Model value) model,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Model value)? model,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TrackUseCaseOutput {
  const factory _Error(String description) = _$_Error;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
