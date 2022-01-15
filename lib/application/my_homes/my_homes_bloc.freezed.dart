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

  WatchRental watchRental(String rentalUuid) {
    return WatchRental(
      rentalUuid,
    );
  }

  HomeReceived homeReceived(Home home) {
    return HomeReceived(
      home,
    );
  }

  RentalReceived rentalReceived(Rental rental) {
    return RentalReceived(
      rental,
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
    required TResult Function(RentalsReceived value) rentalsReceived,
    required TResult Function(WatchHome value) watchHome,
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
abstract class $WatchRentalCopyWith<$Res> {
  factory $WatchRentalCopyWith(
          WatchRental value, $Res Function(WatchRental) then) =
      _$WatchRentalCopyWithImpl<$Res>;
  $Res call({String rentalUuid});
}

/// @nodoc
class _$WatchRentalCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $WatchRentalCopyWith<$Res> {
  _$WatchRentalCopyWithImpl(
      WatchRental _value, $Res Function(WatchRental) _then)
      : super(_value, (v) => _then(v as WatchRental));

  @override
  WatchRental get _value => super._value as WatchRental;

  @override
  $Res call({
    Object? rentalUuid = freezed,
  }) {
    return _then(WatchRental(
      rentalUuid == freezed
          ? _value.rentalUuid
          : rentalUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchRental implements WatchRental {
  const _$WatchRental(this.rentalUuid);

  @override
  final String rentalUuid;

  @override
  String toString() {
    return 'MyHomesEvent.watchRental(rentalUuid: $rentalUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchRental &&
            const DeepCollectionEquality()
                .equals(other.rentalUuid, rentalUuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rentalUuid));

  @JsonKey(ignore: true)
  @override
  $WatchRentalCopyWith<WatchRental> get copyWith =>
      _$WatchRentalCopyWithImpl<WatchRental>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
  }) {
    return watchRental(rentalUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
  }) {
    return watchRental?.call(rentalUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    required TResult orElse(),
  }) {
    if (watchRental != null) {
      return watchRental(rentalUuid);
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
  }) {
    return watchRental(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
  }) {
    return watchRental?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    required TResult orElse(),
  }) {
    if (watchRental != null) {
      return watchRental(this);
    }
    return orElse();
  }
}

abstract class WatchRental implements MyHomesEvent {
  const factory WatchRental(String rentalUuid) = _$WatchRental;

  String get rentalUuid;
  @JsonKey(ignore: true)
  $WatchRentalCopyWith<WatchRental> get copyWith =>
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
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
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
abstract class $RentalReceivedCopyWith<$Res> {
  factory $RentalReceivedCopyWith(
          RentalReceived value, $Res Function(RentalReceived) then) =
      _$RentalReceivedCopyWithImpl<$Res>;
  $Res call({Rental rental});

  $RentalCopyWith<$Res> get rental;
}

/// @nodoc
class _$RentalReceivedCopyWithImpl<$Res>
    extends _$MyHomesEventCopyWithImpl<$Res>
    implements $RentalReceivedCopyWith<$Res> {
  _$RentalReceivedCopyWithImpl(
      RentalReceived _value, $Res Function(RentalReceived) _then)
      : super(_value, (v) => _then(v as RentalReceived));

  @override
  RentalReceived get _value => super._value as RentalReceived;

  @override
  $Res call({
    Object? rental = freezed,
  }) {
    return _then(RentalReceived(
      rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }

  @override
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }
}

/// @nodoc

class _$RentalReceived implements RentalReceived {
  const _$RentalReceived(this.rental);

  @override
  final Rental rental;

  @override
  String toString() {
    return 'MyHomesEvent.rentalReceived(rental: $rental)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RentalReceived &&
            const DeepCollectionEquality().equals(other.rental, rental));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rental));

  @JsonKey(ignore: true)
  @override
  $RentalReceivedCopyWith<RentalReceived> get copyWith =>
      _$RentalReceivedCopyWithImpl<RentalReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
    required TResult Function(List<Rental> rentals) rentalsReceived,
    required TResult Function(String homeUuid) watchHome,
    required TResult Function(String rentalUuid) watchRental,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
  }) {
    return rentalReceived(rental);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
  }) {
    return rentalReceived?.call(rental);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    TResult Function(List<Rental> rentals)? rentalsReceived,
    TResult Function(String homeUuid)? watchHome,
    TResult Function(String rentalUuid)? watchRental,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    required TResult orElse(),
  }) {
    if (rentalReceived != null) {
      return rentalReceived(rental);
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
    required TResult Function(WatchRental value) watchRental,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
  }) {
    return rentalReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
  }) {
    return rentalReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    TResult Function(RentalsReceived value)? rentalsReceived,
    TResult Function(WatchHome value)? watchHome,
    TResult Function(WatchRental value)? watchRental,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    required TResult orElse(),
  }) {
    if (rentalReceived != null) {
      return rentalReceived(this);
    }
    return orElse();
  }
}

abstract class RentalReceived implements MyHomesEvent {
  const factory RentalReceived(Rental rental) = _$RentalReceived;

  Rental get rental;
  @JsonKey(ignore: true)
  $RentalReceivedCopyWith<RentalReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyHomesStateTearOff {
  const _$MyHomesStateTearOff();

  _MyHomesState call(
      {required bool isLoading,
      required List<Home> homes,
      required List<Rental> rentals,
      required Home home,
      required Rental rental,
      required DomainUser host,
      required DomainUser guest}) {
    return _MyHomesState(
      isLoading: isLoading,
      homes: homes,
      rentals: rentals,
      home: home,
      rental: rental,
      host: host,
      guest: guest,
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
  Rental get rental => throw _privateConstructorUsedError;
  DomainUser get host => throw _privateConstructorUsedError;
  DomainUser get guest => throw _privateConstructorUsedError;

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
      {bool isLoading,
      List<Home> homes,
      List<Rental> rentals,
      Home home,
      Rental rental,
      DomainUser host,
      DomainUser guest});

  $HomeCopyWith<$Res> get home;
  $RentalCopyWith<$Res> get rental;
  $DomainUserCopyWith<$Res> get host;
  $DomainUserCopyWith<$Res> get guest;
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
    Object? rental = freezed,
    Object? host = freezed,
    Object? guest = freezed,
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
      rental: rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      guest: guest == freezed
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as DomainUser,
    ));
  }

  @override
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }

  @override
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }

  @override
  $DomainUserCopyWith<$Res> get host {
    return $DomainUserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }

  @override
  $DomainUserCopyWith<$Res> get guest {
    return $DomainUserCopyWith<$Res>(_value.guest, (value) {
      return _then(_value.copyWith(guest: value));
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
      {bool isLoading,
      List<Home> homes,
      List<Rental> rentals,
      Home home,
      Rental rental,
      DomainUser host,
      DomainUser guest});

  @override
  $HomeCopyWith<$Res> get home;
  @override
  $RentalCopyWith<$Res> get rental;
  @override
  $DomainUserCopyWith<$Res> get host;
  @override
  $DomainUserCopyWith<$Res> get guest;
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
    Object? rental = freezed,
    Object? host = freezed,
    Object? guest = freezed,
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
      rental: rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      guest: guest == freezed
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as DomainUser,
    ));
  }
}

/// @nodoc

class _$_MyHomesState implements _MyHomesState {
  _$_MyHomesState(
      {required this.isLoading,
      required this.homes,
      required this.rentals,
      required this.home,
      required this.rental,
      required this.host,
      required this.guest});

  @override
  final bool isLoading;
  @override
  final List<Home> homes;
  @override
  final List<Rental> rentals;
  @override
  final Home home;
  @override
  final Rental rental;
  @override
  final DomainUser host;
  @override
  final DomainUser guest;

  @override
  String toString() {
    return 'MyHomesState(isLoading: $isLoading, homes: $homes, rentals: $rentals, home: $home, rental: $rental, host: $host, guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyHomesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.homes, homes) &&
            const DeepCollectionEquality().equals(other.rentals, rentals) &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(other.rental, rental) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality().equals(other.guest, guest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(homes),
      const DeepCollectionEquality().hash(rentals),
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(rental),
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(guest));

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
      required Home home,
      required Rental rental,
      required DomainUser host,
      required DomainUser guest}) = _$_MyHomesState;

  @override
  bool get isLoading;
  @override
  List<Home> get homes;
  @override
  List<Rental> get rentals;
  @override
  Home get home;
  @override
  Rental get rental;
  @override
  DomainUser get host;
  @override
  DomainUser get guest;
  @override
  @JsonKey(ignore: true)
  _$MyHomesStateCopyWith<_MyHomesState> get copyWith =>
      throw _privateConstructorUsedError;
}
