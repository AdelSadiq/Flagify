// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountriesList,
    required TResult Function(bool isConnected) setIsConnected,
    required TResult Function(List<CountryModel> filteredList) setFilteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountriesList,
    TResult? Function(bool isConnected)? setIsConnected,
    TResult? Function(List<CountryModel> filteredList)? setFilteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountriesList,
    TResult Function(bool isConnected)? setIsConnected,
    TResult Function(List<CountryModel> filteredList)? setFilteredList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountriesList value) getCountriesList,
    required TResult Function(_SetIsConnected value) setIsConnected,
    required TResult Function(_SetFilteredList value) setFilteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountriesList value)? getCountriesList,
    TResult? Function(_SetIsConnected value)? setIsConnected,
    TResult? Function(_SetFilteredList value)? setFilteredList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountriesList value)? getCountriesList,
    TResult Function(_SetIsConnected value)? setIsConnected,
    TResult Function(_SetFilteredList value)? setFilteredList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCountriesListImplCopyWith<$Res> {
  factory _$$GetCountriesListImplCopyWith(_$GetCountriesListImpl value,
          $Res Function(_$GetCountriesListImpl) then) =
      __$$GetCountriesListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountriesListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCountriesListImpl>
    implements _$$GetCountriesListImplCopyWith<$Res> {
  __$$GetCountriesListImplCopyWithImpl(_$GetCountriesListImpl _value,
      $Res Function(_$GetCountriesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCountriesListImpl implements _GetCountriesList {
  const _$GetCountriesListImpl();

  @override
  String toString() {
    return 'HomeEvent.getCountriesList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCountriesListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountriesList,
    required TResult Function(bool isConnected) setIsConnected,
    required TResult Function(List<CountryModel> filteredList) setFilteredList,
  }) {
    return getCountriesList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountriesList,
    TResult? Function(bool isConnected)? setIsConnected,
    TResult? Function(List<CountryModel> filteredList)? setFilteredList,
  }) {
    return getCountriesList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountriesList,
    TResult Function(bool isConnected)? setIsConnected,
    TResult Function(List<CountryModel> filteredList)? setFilteredList,
    required TResult orElse(),
  }) {
    if (getCountriesList != null) {
      return getCountriesList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountriesList value) getCountriesList,
    required TResult Function(_SetIsConnected value) setIsConnected,
    required TResult Function(_SetFilteredList value) setFilteredList,
  }) {
    return getCountriesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountriesList value)? getCountriesList,
    TResult? Function(_SetIsConnected value)? setIsConnected,
    TResult? Function(_SetFilteredList value)? setFilteredList,
  }) {
    return getCountriesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountriesList value)? getCountriesList,
    TResult Function(_SetIsConnected value)? setIsConnected,
    TResult Function(_SetFilteredList value)? setFilteredList,
    required TResult orElse(),
  }) {
    if (getCountriesList != null) {
      return getCountriesList(this);
    }
    return orElse();
  }
}

abstract class _GetCountriesList implements HomeEvent {
  const factory _GetCountriesList() = _$GetCountriesListImpl;
}

/// @nodoc
abstract class _$$SetIsConnectedImplCopyWith<$Res> {
  factory _$$SetIsConnectedImplCopyWith(_$SetIsConnectedImpl value,
          $Res Function(_$SetIsConnectedImpl) then) =
      __$$SetIsConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$SetIsConnectedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetIsConnectedImpl>
    implements _$$SetIsConnectedImplCopyWith<$Res> {
  __$$SetIsConnectedImplCopyWithImpl(
      _$SetIsConnectedImpl _value, $Res Function(_$SetIsConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$SetIsConnectedImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIsConnectedImpl implements _SetIsConnected {
  const _$SetIsConnectedImpl({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'HomeEvent.setIsConnected(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsConnectedImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsConnectedImplCopyWith<_$SetIsConnectedImpl> get copyWith =>
      __$$SetIsConnectedImplCopyWithImpl<_$SetIsConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountriesList,
    required TResult Function(bool isConnected) setIsConnected,
    required TResult Function(List<CountryModel> filteredList) setFilteredList,
  }) {
    return setIsConnected(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountriesList,
    TResult? Function(bool isConnected)? setIsConnected,
    TResult? Function(List<CountryModel> filteredList)? setFilteredList,
  }) {
    return setIsConnected?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountriesList,
    TResult Function(bool isConnected)? setIsConnected,
    TResult Function(List<CountryModel> filteredList)? setFilteredList,
    required TResult orElse(),
  }) {
    if (setIsConnected != null) {
      return setIsConnected(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountriesList value) getCountriesList,
    required TResult Function(_SetIsConnected value) setIsConnected,
    required TResult Function(_SetFilteredList value) setFilteredList,
  }) {
    return setIsConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountriesList value)? getCountriesList,
    TResult? Function(_SetIsConnected value)? setIsConnected,
    TResult? Function(_SetFilteredList value)? setFilteredList,
  }) {
    return setIsConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountriesList value)? getCountriesList,
    TResult Function(_SetIsConnected value)? setIsConnected,
    TResult Function(_SetFilteredList value)? setFilteredList,
    required TResult orElse(),
  }) {
    if (setIsConnected != null) {
      return setIsConnected(this);
    }
    return orElse();
  }
}

abstract class _SetIsConnected implements HomeEvent {
  const factory _SetIsConnected({required final bool isConnected}) =
      _$SetIsConnectedImpl;

  bool get isConnected;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIsConnectedImplCopyWith<_$SetIsConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetFilteredListImplCopyWith<$Res> {
  factory _$$SetFilteredListImplCopyWith(_$SetFilteredListImpl value,
          $Res Function(_$SetFilteredListImpl) then) =
      __$$SetFilteredListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CountryModel> filteredList});
}

/// @nodoc
class __$$SetFilteredListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetFilteredListImpl>
    implements _$$SetFilteredListImplCopyWith<$Res> {
  __$$SetFilteredListImplCopyWithImpl(
      _$SetFilteredListImpl _value, $Res Function(_$SetFilteredListImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredList = null,
  }) {
    return _then(_$SetFilteredListImpl(
      filteredList: null == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc

class _$SetFilteredListImpl implements _SetFilteredList {
  const _$SetFilteredListImpl({required final List<CountryModel> filteredList})
      : _filteredList = filteredList;

  final List<CountryModel> _filteredList;
  @override
  List<CountryModel> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  String toString() {
    return 'HomeEvent.setFilteredList(filteredList: $filteredList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFilteredListImpl &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_filteredList));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFilteredListImplCopyWith<_$SetFilteredListImpl> get copyWith =>
      __$$SetFilteredListImplCopyWithImpl<_$SetFilteredListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountriesList,
    required TResult Function(bool isConnected) setIsConnected,
    required TResult Function(List<CountryModel> filteredList) setFilteredList,
  }) {
    return setFilteredList(filteredList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountriesList,
    TResult? Function(bool isConnected)? setIsConnected,
    TResult? Function(List<CountryModel> filteredList)? setFilteredList,
  }) {
    return setFilteredList?.call(filteredList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountriesList,
    TResult Function(bool isConnected)? setIsConnected,
    TResult Function(List<CountryModel> filteredList)? setFilteredList,
    required TResult orElse(),
  }) {
    if (setFilteredList != null) {
      return setFilteredList(filteredList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountriesList value) getCountriesList,
    required TResult Function(_SetIsConnected value) setIsConnected,
    required TResult Function(_SetFilteredList value) setFilteredList,
  }) {
    return setFilteredList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountriesList value)? getCountriesList,
    TResult? Function(_SetIsConnected value)? setIsConnected,
    TResult? Function(_SetFilteredList value)? setFilteredList,
  }) {
    return setFilteredList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountriesList value)? getCountriesList,
    TResult Function(_SetIsConnected value)? setIsConnected,
    TResult Function(_SetFilteredList value)? setFilteredList,
    required TResult orElse(),
  }) {
    if (setFilteredList != null) {
      return setFilteredList(this);
    }
    return orElse();
  }
}

abstract class _SetFilteredList implements HomeEvent {
  const factory _SetFilteredList(
      {required final List<CountryModel> filteredList}) = _$SetFilteredListImpl;

  List<CountryModel> get filteredList;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFilteredListImplCopyWith<_$SetFilteredListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<CountryModel> get countriesList =>
      throw _privateConstructorUsedError; // UI state
  bool get isConnected => throw _privateConstructorUsedError;
  List<CountryModel> get filterCountriesList =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<CountryModel> countriesList,
      bool isConnected,
      List<CountryModel> filterCountriesList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? countriesList = null,
    Object? isConnected = null,
    Object? filterCountriesList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      countriesList: null == countriesList
          ? _value.countriesList
          : countriesList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      filterCountriesList: null == filterCountriesList
          ? _value.filterCountriesList
          : filterCountriesList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<CountryModel> countriesList,
      bool isConnected,
      List<CountryModel> filterCountriesList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? countriesList = null,
    Object? isConnected = null,
    Object? filterCountriesList = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      countriesList: null == countriesList
          ? _value._countriesList
          : countriesList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      filterCountriesList: null == filterCountriesList
          ? _value._filterCountriesList
          : filterCountriesList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required this.errorMessage,
      required final List<CountryModel> countriesList,
      required this.isConnected,
      required final List<CountryModel> filterCountriesList})
      : _countriesList = countriesList,
        _filterCountriesList = filterCountriesList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String errorMessage;
  final List<CountryModel> _countriesList;
  @override
  List<CountryModel> get countriesList {
    if (_countriesList is EqualUnmodifiableListView) return _countriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countriesList);
  }

// UI state
  @override
  final bool isConnected;
  final List<CountryModel> _filterCountriesList;
  @override
  List<CountryModel> get filterCountriesList {
    if (_filterCountriesList is EqualUnmodifiableListView)
      return _filterCountriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterCountriesList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, countriesList: $countriesList, isConnected: $isConnected, filterCountriesList: $filterCountriesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._countriesList, _countriesList) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            const DeepCollectionEquality()
                .equals(other._filterCountriesList, _filterCountriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      errorMessage,
      const DeepCollectionEquality().hash(_countriesList),
      isConnected,
      const DeepCollectionEquality().hash(_filterCountriesList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String errorMessage,
      required final List<CountryModel> countriesList,
      required final bool isConnected,
      required final List<CountryModel> filterCountriesList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  List<CountryModel> get countriesList; // UI state
  @override
  bool get isConnected;
  @override
  List<CountryModel> get filterCountriesList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
