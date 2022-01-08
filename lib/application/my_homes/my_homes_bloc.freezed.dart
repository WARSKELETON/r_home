// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_homes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyHomesEventTearOff {
  const _$MyHomesEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  HomesReceived homesReceived(List<Home> homes) {
    return HomesReceived(
      homes,
    );
  }

  RentalsReceived rentalsReceived(List<Rental> rentals) {
    return RentalsReceived(
      rentals,
    );
  }

  WatchHome watchHome(String homeUuid) {
    return WatchHome(
      homeUuid,
    );
  }

  HomeReceived homeReceived(Home home) {
    return HomeReceived(
      home,
    );
  }
}

/// @nodoc
const $MyHomesEvent = _$MyHomesEventTearOff();

/// @nodoc
mixin _$MyHomesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomesEventCopyWith<$Res> {
  factory $MyHomesEventCopyWith(
          MyHomesEvent value, $Res Function(MyHomesEvent) then) =
      _$MyHomesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyHomesEventCopyWithImpl<$Res> implements $MyHomesEventCopyWith<$Res> {
  _$MyHomesEventCopyWithImpl(this._value, this._then);

  final MyHomesEvent _value;
  // ignore: unused_field
  final $Res Function(MyHomesEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'MyHomesEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements MyHomesEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $HomesReceivedCopyWith<$Res> {
  factory $HomesReceivedCopyWith(
          HomesReceived value, $Res Function(HomesReceived) then) =
      _$HomesReceivedCopyWithImpl<$Res>;
  $Res call({List<Home> homes});
}

/// @nodoc
class _$HomesReceivedCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $HomesReceivedCopyWith<$Res> {
  _$HomesReceivedCopyWithImpl(
      HomesReceived _value, $Res Function(HomesReceived) _then)
      : super(_value, (v) => _then(v as HomesReceived));

  @override
  HomesReceived get _value => super._value as HomesReceived;

  @override
  $Res call({
    Object? homes = freezed,
  }) {
    return _then(HomesReceived(
      homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc

class _$HomesReceived implements HomesReceived {
  const _$HomesReceived(this.homes);

  @override
  final List<Home> homes;

  @override
  String toString() {
    return 'MyHomesEvent.homesReceived(homes: $homes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomesReceived &&
            const DeepCollectionEquality().equals(other.homes, homes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(homes));

  @JsonKey(ignore: true)
  @override
  $HomesReceivedCopyWith<HomesReceived> get copyWith =>
      _$HomesReceivedCopyWithImpl<HomesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) {
    return homesReceived(homes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) {
    return homesReceived?.call(homes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) {
    if (homesReceived != null) {
      return homesReceived(homes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) {
    return homesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) {
    return homesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) {
    if (homesReceived != null) {
      return homesReceived(this);
    }
    return orElse();
  }
}

abstract class HomesReceived implements MyHomesEvent {
  const factory HomesReceived(List<Home> homes) = _$HomesReceived;

  List<Home> get homes;
  @JsonKey(ignore: true)
  $HomesReceivedCopyWith<HomesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalsReceivedCopyWith<$Res> {
  factory $RentalsReceivedCopyWith(
          RentalsReceived value, $Res Function(RentalsReceived) then) =
      _$RentalsReceivedCopyWithImpl<$Res>;
  $Res call({List<Rental> rentals});
}

/// @nodoc
class _$RentalsReceivedCopyWithImpl<$Res>
    extends _$MyHomesEventCopyWithImpl<$Res>
    implements $RentalsReceivedCopyWith<$Res> {
  _$RentalsReceivedCopyWithImpl(
      RentalsReceived _value, $Res Function(RentalsReceived) _then)
      : super(_value, (v) => _then(v as RentalsReceived));

  @override
  RentalsReceived get _value => super._value as RentalsReceived;

  @override
  $Res call({
    Object? rentals = freezed,
  }) {
    return _then(RentalsReceived(
      rentals == freezed
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
    ));
  }
}

/// @nodoc

class _$RentalsReceived implements RentalsReceived {
  const _$RentalsReceived(this.rentals);

  @override
  final List<Rental> rentals;

  @override
  String toString() {
    return 'MyHomesEvent.rentalsReceived(rentals: $rentals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RentalsReceived &&
            const DeepCollectionEquality().equals(other.rentals, rentals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rentals));

  @JsonKey(ignore: true)
  @override
  $RentalsReceivedCopyWith<RentalsReceived> get copyWith =>
      _$RentalsReceivedCopyWithImpl<RentalsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) {
    return rentalsReceived(rentals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) {
    return rentalsReceived?.call(rentals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) {
    if (rentalsReceived != null) {
      return rentalsReceived(rentals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) {
    return rentalsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) {
    return rentalsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) {
    if (rentalsReceived != null) {
      return rentalsReceived(this);
    }
    return orElse();
  }
}

abstract class RentalsReceived implements MyHomesEvent {
  const factory RentalsReceived(List<Rental> rentals) = _$RentalsReceived;

  List<Rental> get rentals;
  @JsonKey(ignore: true)
  $RentalsReceivedCopyWith<RentalsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchHomeCopyWith<$Res> {
  factory $WatchHomeCopyWith(WatchHome value, $Res Function(WatchHome) then) =
      _$WatchHomeCopyWithImpl<$Res>;
  $Res call({String homeUuid});
}

/// @nodoc
class _$WatchHomeCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $WatchHomeCopyWith<$Res> {
  _$WatchHomeCopyWithImpl(WatchHome _value, $Res Function(WatchHome) _then)
      : super(_value, (v) => _then(v as WatchHome));

  @override
  WatchHome get _value => super._value as WatchHome;

  @override
  $Res call({
    Object? homeUuid = freezed,
  }) {
    return _then(WatchHome(
      homeUuid == freezed
          ? _value.homeUuid
          : homeUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchHome implements WatchHome {
  const _$WatchHome(this.homeUuid);

  @override
  final String homeUuid;

  @override
  String toString() {
    return 'MyHomesEvent.watchHome(homeUuid: $homeUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchHome &&
            const DeepCollectionEquality().equals(other.homeUuid, homeUuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(homeUuid));

  @JsonKey(ignore: true)
  @override
  $WatchHomeCopyWith<WatchHome> get copyWith =>
      _$WatchHomeCopyWithImpl<WatchHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) {
    return watchHome(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) {
    return watchHome?.call(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) {
    if (watchHome != null) {
      return watchHome(homeUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) {
    return watchHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) {
    return watchHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) {
    if (watchHome != null) {
      return watchHome(this);
    }
    return orElse();
  }
}

abstract class WatchHome implements MyHomesEvent {
  const factory WatchHome(String homeUuid) = _$WatchHome;

  String get homeUuid;
  @JsonKey(ignore: true)
  $WatchHomeCopyWith<WatchHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeReceivedCopyWith<$Res> {
  factory $HomeReceivedCopyWith(
          HomeReceived value, $Res Function(HomeReceived) then) =
      _$HomeReceivedCopyWithImpl<$Res>;
  $Res call({Home home});

  $HomeCopyWith<$Res> get home;
}

/// @nodoc
class _$HomeReceivedCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $HomeReceivedCopyWith<$Res> {
  _$HomeReceivedCopyWithImpl(
      HomeReceived _value, $Res Function(HomeReceived) _then)
      : super(_value, (v) => _then(v as HomeReceived));

  @override
  HomeReceived get _value => super._value as HomeReceived;

  @override
  $Res call({
    Object? home = freezed,
  }) {
    return _then(HomeReceived(
      home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }

  @override
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc

class _$HomeReceived implements HomeReceived {
  const _$HomeReceived(this.home);

  @override
  final Home home;

  @override
  String toString() {
    return 'MyHomesEvent.homeReceived(home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeReceived &&
            const DeepCollectionEquality().equals(other.home, home));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(home));

  @JsonKey(ignore: true)
  @override
  $HomeReceivedCopyWith<HomeReceived> get copyWith =>
      _$HomeReceivedCopyWithImpl<HomeReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(Home home) homeReceived,
  }) {
    return homeReceived(home);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
  }) {
    return homeReceived?.call(home);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(Home home)? homeReceived,
    required TResult orElse(),
  }) {
    if (homeReceived != null) {
      return homeReceived(home);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(HomeReceived value) homeReceived,
  }) {
    return homeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
  }) {
    return homeReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(HomeReceived value)? homeReceived,
    required TResult orElse(),
  }) {
    if (homeReceived != null) {
      return homeReceived(this);
    }
    return orElse();
  }
}

abstract class HomeReceived implements MyHomesEvent {
  const factory HomeReceived(Home home) = _$HomeReceived;

  Home get home;
  @JsonKey(ignore: true)
  $HomeReceivedCopyWith<HomeReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyHomesStateTearOff {
  const _$MyHomesStateTearOff();

  _MyHomesState call(
      {required bool isLoading,
      required List<Home> homes,
      required List<Rental> rentals,
      required Home home}) {
    return _MyHomesState(
      isLoading: isLoading,
      homes: homes,
      rentals: rentals,
      home: home,
    );
  }
}

/// @nodoc
const $MyHomesState = _$MyHomesStateTearOff();

/// @nodoc
mixin _$MyHomesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Home> get homes => throw _privateConstructorUsedError;
  List<Rental> get rentals => throw _privateConstructorUsedError;
  Home get home => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyHomesStateCopyWith<MyHomesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomesStateCopyWith<$Res> {
  factory $MyHomesStateCopyWith(
          MyHomesState value, $Res Function(MyHomesState) then) =
      _$MyHomesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, List<Home> homes, List<Rental> rentals, Home home});

  $HomeCopyWith<$Res> get home;
}

/// @nodoc
class _$MyHomesStateCopyWithImpl<$Res> implements $MyHomesStateCopyWith<$Res> {
  _$MyHomesStateCopyWithImpl(this._value, this._then);

  final MyHomesState _value;
  // ignore: unused_field
  final $Res Function(MyHomesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? homes = freezed,
    Object? rentals = freezed,
    Object? home = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
      rentals: rentals == freezed
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }

  @override
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc
abstract class _$MyHomesStateCopyWith<$Res>
    implements $MyHomesStateCopyWith<$Res> {
  factory _$MyHomesStateCopyWith(
          _MyHomesState value, $Res Function(_MyHomesState) then) =
      __$MyHomesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, List<Home> homes, List<Rental> rentals, Home home});

  @override
  $HomeCopyWith<$Res> get home;
}

/// @nodoc
class __$MyHomesStateCopyWithImpl<$Res> extends _$MyHomesStateCopyWithImpl<$Res>
    implements _$MyHomesStateCopyWith<$Res> {
  __$MyHomesStateCopyWithImpl(
      _MyHomesState _value, $Res Function(_MyHomesState) _then)
      : super(_value, (v) => _then(v as _MyHomesState));

  @override
  _MyHomesState get _value => super._value as _MyHomesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? homes = freezed,
    Object? rentals = freezed,
    Object? home = freezed,
  }) {
    return _then(_MyHomesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
      rentals: rentals == freezed
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }
}

/// @nodoc

class _$_MyHomesState implements _MyHomesState {
  _$_MyHomesState(
      {required this.isLoading,
      required this.homes,
      required this.rentals,
      required this.home});

  @override
  final bool isLoading;
  @override
  final List<Home> homes;
  @override
  final List<Rental> rentals;
  @override
  final Home home;

  @override
  String toString() {
    return 'MyHomesState(isLoading: $isLoading, homes: $homes, rentals: $rentals, home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyHomesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.homes, homes) &&
            const DeepCollectionEquality().equals(other.rentals, rentals) &&
            const DeepCollectionEquality().equals(other.home, home));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(homes),
      const DeepCollectionEquality().hash(rentals),
      const DeepCollectionEquality().hash(home));

  @JsonKey(ignore: true)
  @override
  _$MyHomesStateCopyWith<_MyHomesState> get copyWith =>
      __$MyHomesStateCopyWithImpl<_MyHomesState>(this, _$identity);
}

abstract class _MyHomesState implements MyHomesState {
  factory _MyHomesState(
      {required bool isLoading,
      required List<Home> homes,
      required List<Rental> rentals,
      required Home home}) = _$_MyHomesState;

  @override
  bool get isLoading;
  @override
  List<Home> get homes;
  @override
  List<Rental> get rentals;
  @override
  Home get home;
  @override
  @JsonKey(ignore: true)
  _$MyHomesStateCopyWith<_MyHomesState> get copyWith =>
      throw _privateConstructorUsedError;
}
