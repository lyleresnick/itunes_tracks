// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackListViewModelTearOff {
  const _$TrackListViewModelTearOff();

  _TrackListViewModel call(
      {String? errorMessage,
      bool isWaiting = false,
      required List<TrackListRowViewModel> rows}) {
    return _TrackListViewModel(
      errorMessage: errorMessage,
      isWaiting: isWaiting,
      rows: rows,
    );
  }
}

/// @nodoc
const $TrackListViewModel = _$TrackListViewModelTearOff();

/// @nodoc
mixin _$TrackListViewModel {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isWaiting => throw _privateConstructorUsedError;
  List<TrackListRowViewModel> get rows => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackListViewModelCopyWith<TrackListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListViewModelCopyWith<$Res> {
  factory $TrackListViewModelCopyWith(
          TrackListViewModel value, $Res Function(TrackListViewModel) then) =
      _$TrackListViewModelCopyWithImpl<$Res>;
  $Res call(
      {String? errorMessage, bool isWaiting, List<TrackListRowViewModel> rows});
}

/// @nodoc
class _$TrackListViewModelCopyWithImpl<$Res>
    implements $TrackListViewModelCopyWith<$Res> {
  _$TrackListViewModelCopyWithImpl(this._value, this._then);

  final TrackListViewModel _value;
  // ignore: unused_field
  final $Res Function(TrackListViewModel) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isWaiting = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<TrackListRowViewModel>,
    ));
  }
}

/// @nodoc
abstract class _$TrackListViewModelCopyWith<$Res>
    implements $TrackListViewModelCopyWith<$Res> {
  factory _$TrackListViewModelCopyWith(
          _TrackListViewModel value, $Res Function(_TrackListViewModel) then) =
      __$TrackListViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? errorMessage, bool isWaiting, List<TrackListRowViewModel> rows});
}

/// @nodoc
class __$TrackListViewModelCopyWithImpl<$Res>
    extends _$TrackListViewModelCopyWithImpl<$Res>
    implements _$TrackListViewModelCopyWith<$Res> {
  __$TrackListViewModelCopyWithImpl(
      _TrackListViewModel _value, $Res Function(_TrackListViewModel) _then)
      : super(_value, (v) => _then(v as _TrackListViewModel));

  @override
  _TrackListViewModel get _value => super._value as _TrackListViewModel;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isWaiting = freezed,
    Object? rows = freezed,
  }) {
    return _then(_TrackListViewModel(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<TrackListRowViewModel>,
    ));
  }
}

/// @nodoc

class _$_TrackListViewModel implements _TrackListViewModel {
  _$_TrackListViewModel(
      {this.errorMessage, this.isWaiting = false, required this.rows});

  @override
  final String? errorMessage;
  @JsonKey(defaultValue: false)
  @override
  final bool isWaiting;
  @override
  final List<TrackListRowViewModel> rows;

  @override
  String toString() {
    return 'TrackListViewModel(errorMessage: $errorMessage, isWaiting: $isWaiting, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackListViewModel &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isWaiting, isWaiting) ||
                const DeepCollectionEquality()
                    .equals(other.isWaiting, isWaiting)) &&
            (identical(other.rows, rows) ||
                const DeepCollectionEquality().equals(other.rows, rows)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isWaiting) ^
      const DeepCollectionEquality().hash(rows);

  @JsonKey(ignore: true)
  @override
  _$TrackListViewModelCopyWith<_TrackListViewModel> get copyWith =>
      __$TrackListViewModelCopyWithImpl<_TrackListViewModel>(this, _$identity);
}

abstract class _TrackListViewModel implements TrackListViewModel {
  factory _TrackListViewModel(
      {String? errorMessage,
      bool isWaiting,
      required List<TrackListRowViewModel> rows}) = _$_TrackListViewModel;

  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  bool get isWaiting => throw _privateConstructorUsedError;
  @override
  List<TrackListRowViewModel> get rows => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackListViewModelCopyWith<_TrackListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackListRowViewModelTearOff {
  const _$TrackListRowViewModelTearOff();

  _TrackListRowViewModel call(
      {required String artistName,
      required String trackName,
      required Uri artworkUrl100,
      required String trackTime,
      required String trackPrice}) {
    return _TrackListRowViewModel(
      artistName: artistName,
      trackName: trackName,
      artworkUrl100: artworkUrl100,
      trackTime: trackTime,
      trackPrice: trackPrice,
    );
  }
}

/// @nodoc
const $TrackListRowViewModel = _$TrackListRowViewModelTearOff();

/// @nodoc
mixin _$TrackListRowViewModel {
  String get artistName => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;
  Uri get artworkUrl100 => throw _privateConstructorUsedError;
  String get trackTime => throw _privateConstructorUsedError;
  String get trackPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackListRowViewModelCopyWith<TrackListRowViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListRowViewModelCopyWith<$Res> {
  factory $TrackListRowViewModelCopyWith(TrackListRowViewModel value,
          $Res Function(TrackListRowViewModel) then) =
      _$TrackListRowViewModelCopyWithImpl<$Res>;
  $Res call(
      {String artistName,
      String trackName,
      Uri artworkUrl100,
      String trackTime,
      String trackPrice});
}

/// @nodoc
class _$TrackListRowViewModelCopyWithImpl<$Res>
    implements $TrackListRowViewModelCopyWith<$Res> {
  _$TrackListRowViewModelCopyWithImpl(this._value, this._then);

  final TrackListRowViewModel _value;
  // ignore: unused_field
  final $Res Function(TrackListRowViewModel) _then;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? trackTime = freezed,
    Object? trackPrice = freezed,
  }) {
    return _then(_value.copyWith(
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
      trackTime: trackTime == freezed
          ? _value.trackTime
          : trackTime // ignore: cast_nullable_to_non_nullable
              as String,
      trackPrice: trackPrice == freezed
          ? _value.trackPrice
          : trackPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackListRowViewModelCopyWith<$Res>
    implements $TrackListRowViewModelCopyWith<$Res> {
  factory _$TrackListRowViewModelCopyWith(_TrackListRowViewModel value,
          $Res Function(_TrackListRowViewModel) then) =
      __$TrackListRowViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String artistName,
      String trackName,
      Uri artworkUrl100,
      String trackTime,
      String trackPrice});
}

/// @nodoc
class __$TrackListRowViewModelCopyWithImpl<$Res>
    extends _$TrackListRowViewModelCopyWithImpl<$Res>
    implements _$TrackListRowViewModelCopyWith<$Res> {
  __$TrackListRowViewModelCopyWithImpl(_TrackListRowViewModel _value,
      $Res Function(_TrackListRowViewModel) _then)
      : super(_value, (v) => _then(v as _TrackListRowViewModel));

  @override
  _TrackListRowViewModel get _value => super._value as _TrackListRowViewModel;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? trackTime = freezed,
    Object? trackPrice = freezed,
  }) {
    return _then(_TrackListRowViewModel(
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
      trackTime: trackTime == freezed
          ? _value.trackTime
          : trackTime // ignore: cast_nullable_to_non_nullable
              as String,
      trackPrice: trackPrice == freezed
          ? _value.trackPrice
          : trackPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrackListRowViewModel implements _TrackListRowViewModel {
  _$_TrackListRowViewModel(
      {required this.artistName,
      required this.trackName,
      required this.artworkUrl100,
      required this.trackTime,
      required this.trackPrice});

  @override
  final String artistName;
  @override
  final String trackName;
  @override
  final Uri artworkUrl100;
  @override
  final String trackTime;
  @override
  final String trackPrice;

  @override
  String toString() {
    return 'TrackListRowViewModel(artistName: $artistName, trackName: $trackName, artworkUrl100: $artworkUrl100, trackTime: $trackTime, trackPrice: $trackPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackListRowViewModel &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality()
                    .equals(other.artistName, artistName)) &&
            (identical(other.trackName, trackName) ||
                const DeepCollectionEquality()
                    .equals(other.trackName, trackName)) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                const DeepCollectionEquality()
                    .equals(other.artworkUrl100, artworkUrl100)) &&
            (identical(other.trackTime, trackTime) ||
                const DeepCollectionEquality()
                    .equals(other.trackTime, trackTime)) &&
            (identical(other.trackPrice, trackPrice) ||
                const DeepCollectionEquality()
                    .equals(other.trackPrice, trackPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(trackName) ^
      const DeepCollectionEquality().hash(artworkUrl100) ^
      const DeepCollectionEquality().hash(trackTime) ^
      const DeepCollectionEquality().hash(trackPrice);

  @JsonKey(ignore: true)
  @override
  _$TrackListRowViewModelCopyWith<_TrackListRowViewModel> get copyWith =>
      __$TrackListRowViewModelCopyWithImpl<_TrackListRowViewModel>(
          this, _$identity);
}

abstract class _TrackListRowViewModel implements TrackListRowViewModel {
  factory _TrackListRowViewModel(
      {required String artistName,
      required String trackName,
      required Uri artworkUrl100,
      required String trackTime,
      required String trackPrice}) = _$_TrackListRowViewModel;

  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  String get trackName => throw _privateConstructorUsedError;
  @override
  Uri get artworkUrl100 => throw _privateConstructorUsedError;
  @override
  String get trackTime => throw _privateConstructorUsedError;
  @override
  String get trackPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackListRowViewModelCopyWith<_TrackListRowViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
