// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_list_presentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackListPresentationModelTearOff {
  const _$TrackListPresentationModelTearOff();

  _TrackListPresentationModel call(
      {String? errorMessage,
      TrackDomainIssue? semanticReason,
      bool isWaiting = false,
      required List<TrackListRowPresentationModel> rows,
      required String searchTerm}) {
    return _TrackListPresentationModel(
      errorMessage: errorMessage,
      semanticReason: semanticReason,
      isWaiting: isWaiting,
      rows: rows,
      searchTerm: searchTerm,
    );
  }
}

/// @nodoc
const $TrackListPresentationModel = _$TrackListPresentationModelTearOff();

/// @nodoc
mixin _$TrackListPresentationModel {
  String? get errorMessage => throw _privateConstructorUsedError;
  TrackDomainIssue? get semanticReason => throw _privateConstructorUsedError;
  bool get isWaiting => throw _privateConstructorUsedError;
  List<TrackListRowPresentationModel> get rows =>
      throw _privateConstructorUsedError;
  String get searchTerm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackListPresentationModelCopyWith<TrackListPresentationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListPresentationModelCopyWith<$Res> {
  factory $TrackListPresentationModelCopyWith(TrackListPresentationModel value,
          $Res Function(TrackListPresentationModel) then) =
      _$TrackListPresentationModelCopyWithImpl<$Res>;
  $Res call(
      {String? errorMessage,
      TrackDomainIssue? semanticReason,
      bool isWaiting,
      List<TrackListRowPresentationModel> rows,
      String searchTerm});
}

/// @nodoc
class _$TrackListPresentationModelCopyWithImpl<$Res>
    implements $TrackListPresentationModelCopyWith<$Res> {
  _$TrackListPresentationModelCopyWithImpl(this._value, this._then);

  final TrackListPresentationModel _value;
  // ignore: unused_field
  final $Res Function(TrackListPresentationModel) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? semanticReason = freezed,
    Object? isWaiting = freezed,
    Object? rows = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticReason: semanticReason == freezed
          ? _value.semanticReason
          : semanticReason // ignore: cast_nullable_to_non_nullable
              as TrackDomainIssue?,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<TrackListRowPresentationModel>,
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackListPresentationModelCopyWith<$Res>
    implements $TrackListPresentationModelCopyWith<$Res> {
  factory _$TrackListPresentationModelCopyWith(
          _TrackListPresentationModel value,
          $Res Function(_TrackListPresentationModel) then) =
      __$TrackListPresentationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? errorMessage,
      TrackDomainIssue? semanticReason,
      bool isWaiting,
      List<TrackListRowPresentationModel> rows,
      String searchTerm});
}

/// @nodoc
class __$TrackListPresentationModelCopyWithImpl<$Res>
    extends _$TrackListPresentationModelCopyWithImpl<$Res>
    implements _$TrackListPresentationModelCopyWith<$Res> {
  __$TrackListPresentationModelCopyWithImpl(_TrackListPresentationModel _value,
      $Res Function(_TrackListPresentationModel) _then)
      : super(_value, (v) => _then(v as _TrackListPresentationModel));

  @override
  _TrackListPresentationModel get _value =>
      super._value as _TrackListPresentationModel;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? semanticReason = freezed,
    Object? isWaiting = freezed,
    Object? rows = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_TrackListPresentationModel(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticReason: semanticReason == freezed
          ? _value.semanticReason
          : semanticReason // ignore: cast_nullable_to_non_nullable
              as TrackDomainIssue?,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<TrackListRowPresentationModel>,
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrackListPresentationModel implements _TrackListPresentationModel {
  _$_TrackListPresentationModel(
      {this.errorMessage,
      this.semanticReason,
      this.isWaiting = false,
      required this.rows,
      required this.searchTerm});

  @override
  final String? errorMessage;
  @override
  final TrackDomainIssue? semanticReason;
  @JsonKey(defaultValue: false)
  @override
  final bool isWaiting;
  @override
  final List<TrackListRowPresentationModel> rows;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'TrackListPresentationModel(errorMessage: $errorMessage, semanticReason: $semanticReason, isWaiting: $isWaiting, rows: $rows, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackListPresentationModel &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.semanticReason, semanticReason) ||
                const DeepCollectionEquality()
                    .equals(other.semanticReason, semanticReason)) &&
            (identical(other.isWaiting, isWaiting) ||
                const DeepCollectionEquality()
                    .equals(other.isWaiting, isWaiting)) &&
            (identical(other.rows, rows) ||
                const DeepCollectionEquality().equals(other.rows, rows)) &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(semanticReason) ^
      const DeepCollectionEquality().hash(isWaiting) ^
      const DeepCollectionEquality().hash(rows) ^
      const DeepCollectionEquality().hash(searchTerm);

  @JsonKey(ignore: true)
  @override
  _$TrackListPresentationModelCopyWith<_TrackListPresentationModel>
      get copyWith => __$TrackListPresentationModelCopyWithImpl<
          _TrackListPresentationModel>(this, _$identity);
}

abstract class _TrackListPresentationModel
    implements TrackListPresentationModel {
  factory _TrackListPresentationModel(
      {String? errorMessage,
      TrackDomainIssue? semanticReason,
      bool isWaiting,
      required List<TrackListRowPresentationModel> rows,
      required String searchTerm}) = _$_TrackListPresentationModel;

  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  TrackDomainIssue? get semanticReason => throw _privateConstructorUsedError;
  @override
  bool get isWaiting => throw _privateConstructorUsedError;
  @override
  List<TrackListRowPresentationModel> get rows =>
      throw _privateConstructorUsedError;
  @override
  String get searchTerm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackListPresentationModelCopyWith<_TrackListPresentationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackListRowPresentationModelTearOff {
  const _$TrackListRowPresentationModelTearOff();

  _TrackListRowPresentationModel call(
      {required int trackId,
      required String artistName,
      required String trackName,
      required Uri artworkUrl100,
      required int trackTimeMillis,
      required double trackPrice}) {
    return _TrackListRowPresentationModel(
      trackId: trackId,
      artistName: artistName,
      trackName: trackName,
      artworkUrl100: artworkUrl100,
      trackTimeMillis: trackTimeMillis,
      trackPrice: trackPrice,
    );
  }
}

/// @nodoc
const $TrackListRowPresentationModel = _$TrackListRowPresentationModelTearOff();

/// @nodoc
mixin _$TrackListRowPresentationModel {
  int get trackId => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;
  Uri get artworkUrl100 => throw _privateConstructorUsedError;
  int get trackTimeMillis => throw _privateConstructorUsedError;
  double get trackPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackListRowPresentationModelCopyWith<TrackListRowPresentationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListRowPresentationModelCopyWith<$Res> {
  factory $TrackListRowPresentationModelCopyWith(
          TrackListRowPresentationModel value,
          $Res Function(TrackListRowPresentationModel) then) =
      _$TrackListRowPresentationModelCopyWithImpl<$Res>;
  $Res call(
      {int trackId,
      String artistName,
      String trackName,
      Uri artworkUrl100,
      int trackTimeMillis,
      double trackPrice});
}

/// @nodoc
class _$TrackListRowPresentationModelCopyWithImpl<$Res>
    implements $TrackListRowPresentationModelCopyWith<$Res> {
  _$TrackListRowPresentationModelCopyWithImpl(this._value, this._then);

  final TrackListRowPresentationModel _value;
  // ignore: unused_field
  final $Res Function(TrackListRowPresentationModel) _then;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? trackTimeMillis = freezed,
    Object? trackPrice = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as Uri,
      trackTimeMillis: trackTimeMillis == freezed
          ? _value.trackTimeMillis
          : trackTimeMillis // ignore: cast_nullable_to_non_nullable
              as int,
      trackPrice: trackPrice == freezed
          ? _value.trackPrice
          : trackPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TrackListRowPresentationModelCopyWith<$Res>
    implements $TrackListRowPresentationModelCopyWith<$Res> {
  factory _$TrackListRowPresentationModelCopyWith(
          _TrackListRowPresentationModel value,
          $Res Function(_TrackListRowPresentationModel) then) =
      __$TrackListRowPresentationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int trackId,
      String artistName,
      String trackName,
      Uri artworkUrl100,
      int trackTimeMillis,
      double trackPrice});
}

/// @nodoc
class __$TrackListRowPresentationModelCopyWithImpl<$Res>
    extends _$TrackListRowPresentationModelCopyWithImpl<$Res>
    implements _$TrackListRowPresentationModelCopyWith<$Res> {
  __$TrackListRowPresentationModelCopyWithImpl(
      _TrackListRowPresentationModel _value,
      $Res Function(_TrackListRowPresentationModel) _then)
      : super(_value, (v) => _then(v as _TrackListRowPresentationModel));

  @override
  _TrackListRowPresentationModel get _value =>
      super._value as _TrackListRowPresentationModel;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? trackTimeMillis = freezed,
    Object? trackPrice = freezed,
  }) {
    return _then(_TrackListRowPresentationModel(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as Uri,
      trackTimeMillis: trackTimeMillis == freezed
          ? _value.trackTimeMillis
          : trackTimeMillis // ignore: cast_nullable_to_non_nullable
              as int,
      trackPrice: trackPrice == freezed
          ? _value.trackPrice
          : trackPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_TrackListRowPresentationModel
    implements _TrackListRowPresentationModel {
  _$_TrackListRowPresentationModel(
      {required this.trackId,
      required this.artistName,
      required this.trackName,
      required this.artworkUrl100,
      required this.trackTimeMillis,
      required this.trackPrice});

  @override
  final int trackId;
  @override
  final String artistName;
  @override
  final String trackName;
  @override
  final Uri artworkUrl100;
  @override
  final int trackTimeMillis;
  @override
  final double trackPrice;

  @override
  String toString() {
    return 'TrackListRowPresentationModel(trackId: $trackId, artistName: $artistName, trackName: $trackName, artworkUrl100: $artworkUrl100, trackTimeMillis: $trackTimeMillis, trackPrice: $trackPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackListRowPresentationModel &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality()
                    .equals(other.trackId, trackId)) &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality()
                    .equals(other.artistName, artistName)) &&
            (identical(other.trackName, trackName) ||
                const DeepCollectionEquality()
                    .equals(other.trackName, trackName)) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                const DeepCollectionEquality()
                    .equals(other.artworkUrl100, artworkUrl100)) &&
            (identical(other.trackTimeMillis, trackTimeMillis) ||
                const DeepCollectionEquality()
                    .equals(other.trackTimeMillis, trackTimeMillis)) &&
            (identical(other.trackPrice, trackPrice) ||
                const DeepCollectionEquality()
                    .equals(other.trackPrice, trackPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackId) ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(trackName) ^
      const DeepCollectionEquality().hash(artworkUrl100) ^
      const DeepCollectionEquality().hash(trackTimeMillis) ^
      const DeepCollectionEquality().hash(trackPrice);

  @JsonKey(ignore: true)
  @override
  _$TrackListRowPresentationModelCopyWith<_TrackListRowPresentationModel>
      get copyWith => __$TrackListRowPresentationModelCopyWithImpl<
          _TrackListRowPresentationModel>(this, _$identity);
}

abstract class _TrackListRowPresentationModel
    implements TrackListRowPresentationModel {
  factory _TrackListRowPresentationModel(
      {required int trackId,
      required String artistName,
      required String trackName,
      required Uri artworkUrl100,
      required int trackTimeMillis,
      required double trackPrice}) = _$_TrackListRowPresentationModel;

  @override
  int get trackId => throw _privateConstructorUsedError;
  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  String get trackName => throw _privateConstructorUsedError;
  @override
  Uri get artworkUrl100 => throw _privateConstructorUsedError;
  @override
  int get trackTimeMillis => throw _privateConstructorUsedError;
  @override
  double get trackPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackListRowPresentationModelCopyWith<_TrackListRowPresentationModel>
      get copyWith => throw _privateConstructorUsedError;
}
