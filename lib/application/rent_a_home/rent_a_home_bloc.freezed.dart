// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rent_a_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RentAHomeEventTearOff {
  const _$RentAHomeEventTearOff();

  Initialize initialize(Option<Rental> optionOf, String? location) {
    return Initialize(
      optionOf,
      location,
    );
  }

  WatchAvailableHomes watchAvailableHomes() {
    return const WatchAvailableHomes();
  }

  AvailableHomesReceived availableHomesReceived(List<Home> homes) {
    return AvailableHomesReceived(
      homes,
    );
  }

  LocationChanged locationChanged(String location) {
    return LocationChanged(
      location,
    );
  }

  PaymentMethodChanged paymentMethodChanged(String paymentMethod) {
    return PaymentMethodChanged(
      paymentMethod,
    );
  }

  ImagesReceived imagesReceived(List<String> images) {
    return ImagesReceived(
      images,
    );
  }

  HomeChanged homeChanged(Home home) {
    return HomeChanged(
      home,
    );
  }

  CheckInChanged checkInChanged(DateTime? checkIn) {
    return CheckInChanged(
      checkIn,
    );
  }

  CheckOutChanged checkOutChanged(DateTime? checkOut) {
    return CheckOutChanged(
      checkOut,
    );
  }

  AdultsAdd adultsAdd(int increment) {
    return AdultsAdd(
      increment,
    );
  }

  AdultsRemove adultsRemove(int decrement) {
    return AdultsRemove(
      decrement,
    );
  }

  ChildrenAdd childrenAdd(int increment) {
    return ChildrenAdd(
      increment,
    );
  }

  ChildrenRemove childrenRemove(int decrement) {
    return ChildrenRemove(
      decrement,
    );
  }

  PetsAdd petsAdd(int increment) {
    return PetsAdd(
      increment,
    );
  }

  PetsRemove petsRemove(int decrement) {
    return PetsRemove(
      decrement,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $RentAHomeEvent = _$RentAHomeEventTearOff();

/// @nodoc
mixin _$RentAHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentAHomeEventCopyWith<$Res> {
  factory $RentAHomeEventCopyWith(
          RentAHomeEvent value, $Res Function(RentAHomeEvent) then) =
      _$RentAHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RentAHomeEventCopyWithImpl<$Res>
    implements $RentAHomeEventCopyWith<$Res> {
  _$RentAHomeEventCopyWithImpl(this._value, this._then);

  final RentAHomeEvent _value;
  // ignore: unused_field
  final $Res Function(RentAHomeEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Rental> optionOf, String? location});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? optionOf = freezed,
    Object? location = freezed,
  }) {
    return _then(Initialize(
      optionOf == freezed
          ? _value.optionOf
          : optionOf // ignore: cast_nullable_to_non_nullable
              as Option<Rental>,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.optionOf, this.location);

  @override
  final Option<Rental> optionOf;
  @override
  final String? location;

  @override
  String toString() {
    return 'RentAHomeEvent.initialize(optionOf: $optionOf, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality().equals(other.optionOf, optionOf) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(optionOf),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return initialize(optionOf, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return initialize?.call(optionOf, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(optionOf, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements RentAHomeEvent {
  const factory Initialize(Option<Rental> optionOf, String? location) =
      _$Initialize;

  Option<Rental> get optionOf;
  String? get location;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchAvailableHomesCopyWith<$Res> {
  factory $WatchAvailableHomesCopyWith(
          WatchAvailableHomes value, $Res Function(WatchAvailableHomes) then) =
      _$WatchAvailableHomesCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAvailableHomesCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $WatchAvailableHomesCopyWith<$Res> {
  _$WatchAvailableHomesCopyWithImpl(
      WatchAvailableHomes _value, $Res Function(WatchAvailableHomes) _then)
      : super(_value, (v) => _then(v as WatchAvailableHomes));

  @override
  WatchAvailableHomes get _value => super._value as WatchAvailableHomes;
}

/// @nodoc

class _$WatchAvailableHomes implements WatchAvailableHomes {
  const _$WatchAvailableHomes();

  @override
  String toString() {
    return 'RentAHomeEvent.watchAvailableHomes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchAvailableHomes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return watchAvailableHomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return watchAvailableHomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (watchAvailableHomes != null) {
      return watchAvailableHomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return watchAvailableHomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return watchAvailableHomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (watchAvailableHomes != null) {
      return watchAvailableHomes(this);
    }
    return orElse();
  }
}

abstract class WatchAvailableHomes implements RentAHomeEvent {
  const factory WatchAvailableHomes() = _$WatchAvailableHomes;
}

/// @nodoc
abstract class $AvailableHomesReceivedCopyWith<$Res> {
  factory $AvailableHomesReceivedCopyWith(AvailableHomesReceived value,
          $Res Function(AvailableHomesReceived) then) =
      _$AvailableHomesReceivedCopyWithImpl<$Res>;
  $Res call({List<Home> homes});
}

/// @nodoc
class _$AvailableHomesReceivedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $AvailableHomesReceivedCopyWith<$Res> {
  _$AvailableHomesReceivedCopyWithImpl(AvailableHomesReceived _value,
      $Res Function(AvailableHomesReceived) _then)
      : super(_value, (v) => _then(v as AvailableHomesReceived));

  @override
  AvailableHomesReceived get _value => super._value as AvailableHomesReceived;

  @override
  $Res call({
    Object? homes = freezed,
  }) {
    return _then(AvailableHomesReceived(
      homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc

class _$AvailableHomesReceived implements AvailableHomesReceived {
  const _$AvailableHomesReceived(this.homes);

  @override
  final List<Home> homes;

  @override
  String toString() {
    return 'RentAHomeEvent.availableHomesReceived(homes: $homes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailableHomesReceived &&
            const DeepCollectionEquality().equals(other.homes, homes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(homes));

  @JsonKey(ignore: true)
  @override
  $AvailableHomesReceivedCopyWith<AvailableHomesReceived> get copyWith =>
      _$AvailableHomesReceivedCopyWithImpl<AvailableHomesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return availableHomesReceived(homes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return availableHomesReceived?.call(homes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (availableHomesReceived != null) {
      return availableHomesReceived(homes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return availableHomesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return availableHomesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (availableHomesReceived != null) {
      return availableHomesReceived(this);
    }
    return orElse();
  }
}

abstract class AvailableHomesReceived implements RentAHomeEvent {
  const factory AvailableHomesReceived(List<Home> homes) =
      _$AvailableHomesReceived;

  List<Home> get homes;
  @JsonKey(ignore: true)
  $AvailableHomesReceivedCopyWith<AvailableHomesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChangedCopyWith<$Res> {
  factory $LocationChangedCopyWith(
          LocationChanged value, $Res Function(LocationChanged) then) =
      _$LocationChangedCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class _$LocationChangedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $LocationChangedCopyWith<$Res> {
  _$LocationChangedCopyWithImpl(
      LocationChanged _value, $Res Function(LocationChanged) _then)
      : super(_value, (v) => _then(v as LocationChanged));

  @override
  LocationChanged get _value => super._value as LocationChanged;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(LocationChanged(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationChanged implements LocationChanged {
  const _$LocationChanged(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'RentAHomeEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationChanged &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $LocationChangedCopyWith<LocationChanged> get copyWith =>
      _$LocationChangedCopyWithImpl<LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class LocationChanged implements RentAHomeEvent {
  const factory LocationChanged(String location) = _$LocationChanged;

  String get location;
  @JsonKey(ignore: true)
  $LocationChangedCopyWith<LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodChangedCopyWith<$Res> {
  factory $PaymentMethodChangedCopyWith(PaymentMethodChanged value,
          $Res Function(PaymentMethodChanged) then) =
      _$PaymentMethodChangedCopyWithImpl<$Res>;
  $Res call({String paymentMethod});
}

/// @nodoc
class _$PaymentMethodChangedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $PaymentMethodChangedCopyWith<$Res> {
  _$PaymentMethodChangedCopyWithImpl(
      PaymentMethodChanged _value, $Res Function(PaymentMethodChanged) _then)
      : super(_value, (v) => _then(v as PaymentMethodChanged));

  @override
  PaymentMethodChanged get _value => super._value as PaymentMethodChanged;

  @override
  $Res call({
    Object? paymentMethod = freezed,
  }) {
    return _then(PaymentMethodChanged(
      paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentMethodChanged implements PaymentMethodChanged {
  const _$PaymentMethodChanged(this.paymentMethod);

  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'RentAHomeEvent.paymentMethodChanged(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodChanged &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  $PaymentMethodChangedCopyWith<PaymentMethodChanged> get copyWith =>
      _$PaymentMethodChangedCopyWithImpl<PaymentMethodChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return paymentMethodChanged(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return paymentMethodChanged?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (paymentMethodChanged != null) {
      return paymentMethodChanged(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return paymentMethodChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return paymentMethodChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (paymentMethodChanged != null) {
      return paymentMethodChanged(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodChanged implements RentAHomeEvent {
  const factory PaymentMethodChanged(String paymentMethod) =
      _$PaymentMethodChanged;

  String get paymentMethod;
  @JsonKey(ignore: true)
  $PaymentMethodChangedCopyWith<PaymentMethodChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesReceivedCopyWith<$Res> {
  factory $ImagesReceivedCopyWith(
          ImagesReceived value, $Res Function(ImagesReceived) then) =
      _$ImagesReceivedCopyWithImpl<$Res>;
  $Res call({List<String> images});
}

/// @nodoc
class _$ImagesReceivedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $ImagesReceivedCopyWith<$Res> {
  _$ImagesReceivedCopyWithImpl(
      ImagesReceived _value, $Res Function(ImagesReceived) _then)
      : super(_value, (v) => _then(v as ImagesReceived));

  @override
  ImagesReceived get _value => super._value as ImagesReceived;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(ImagesReceived(
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ImagesReceived implements ImagesReceived {
  const _$ImagesReceived(this.images);

  @override
  final List<String> images;

  @override
  String toString() {
    return 'RentAHomeEvent.imagesReceived(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImagesReceived &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  $ImagesReceivedCopyWith<ImagesReceived> get copyWith =>
      _$ImagesReceivedCopyWithImpl<ImagesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return imagesReceived(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return imagesReceived?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (imagesReceived != null) {
      return imagesReceived(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return imagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return imagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (imagesReceived != null) {
      return imagesReceived(this);
    }
    return orElse();
  }
}

abstract class ImagesReceived implements RentAHomeEvent {
  const factory ImagesReceived(List<String> images) = _$ImagesReceived;

  List<String> get images;
  @JsonKey(ignore: true)
  $ImagesReceivedCopyWith<ImagesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeChangedCopyWith<$Res> {
  factory $HomeChangedCopyWith(
          HomeChanged value, $Res Function(HomeChanged) then) =
      _$HomeChangedCopyWithImpl<$Res>;
  $Res call({Home home});

  $HomeCopyWith<$Res> get home;
}

/// @nodoc
class _$HomeChangedCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $HomeChangedCopyWith<$Res> {
  _$HomeChangedCopyWithImpl(
      HomeChanged _value, $Res Function(HomeChanged) _then)
      : super(_value, (v) => _then(v as HomeChanged));

  @override
  HomeChanged get _value => super._value as HomeChanged;

  @override
  $Res call({
    Object? home = freezed,
  }) {
    return _then(HomeChanged(
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

class _$HomeChanged implements HomeChanged {
  const _$HomeChanged(this.home);

  @override
  final Home home;

  @override
  String toString() {
    return 'RentAHomeEvent.homeChanged(home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeChanged &&
            const DeepCollectionEquality().equals(other.home, home));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(home));

  @JsonKey(ignore: true)
  @override
  $HomeChangedCopyWith<HomeChanged> get copyWith =>
      _$HomeChangedCopyWithImpl<HomeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return homeChanged(home);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return homeChanged?.call(home);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (homeChanged != null) {
      return homeChanged(home);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return homeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return homeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (homeChanged != null) {
      return homeChanged(this);
    }
    return orElse();
  }
}

abstract class HomeChanged implements RentAHomeEvent {
  const factory HomeChanged(Home home) = _$HomeChanged;

  Home get home;
  @JsonKey(ignore: true)
  $HomeChangedCopyWith<HomeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInChangedCopyWith<$Res> {
  factory $CheckInChangedCopyWith(
          CheckInChanged value, $Res Function(CheckInChanged) then) =
      _$CheckInChangedCopyWithImpl<$Res>;
  $Res call({DateTime? checkIn});
}

/// @nodoc
class _$CheckInChangedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $CheckInChangedCopyWith<$Res> {
  _$CheckInChangedCopyWithImpl(
      CheckInChanged _value, $Res Function(CheckInChanged) _then)
      : super(_value, (v) => _then(v as CheckInChanged));

  @override
  CheckInChanged get _value => super._value as CheckInChanged;

  @override
  $Res call({
    Object? checkIn = freezed,
  }) {
    return _then(CheckInChanged(
      checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CheckInChanged implements CheckInChanged {
  const _$CheckInChanged(this.checkIn);

  @override
  final DateTime? checkIn;

  @override
  String toString() {
    return 'RentAHomeEvent.checkInChanged(checkIn: $checkIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckInChanged &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(checkIn));

  @JsonKey(ignore: true)
  @override
  $CheckInChangedCopyWith<CheckInChanged> get copyWith =>
      _$CheckInChangedCopyWithImpl<CheckInChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return checkInChanged(checkIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return checkInChanged?.call(checkIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (checkInChanged != null) {
      return checkInChanged(checkIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return checkInChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return checkInChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (checkInChanged != null) {
      return checkInChanged(this);
    }
    return orElse();
  }
}

abstract class CheckInChanged implements RentAHomeEvent {
  const factory CheckInChanged(DateTime? checkIn) = _$CheckInChanged;

  DateTime? get checkIn;
  @JsonKey(ignore: true)
  $CheckInChangedCopyWith<CheckInChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutChangedCopyWith<$Res> {
  factory $CheckOutChangedCopyWith(
          CheckOutChanged value, $Res Function(CheckOutChanged) then) =
      _$CheckOutChangedCopyWithImpl<$Res>;
  $Res call({DateTime? checkOut});
}

/// @nodoc
class _$CheckOutChangedCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $CheckOutChangedCopyWith<$Res> {
  _$CheckOutChangedCopyWithImpl(
      CheckOutChanged _value, $Res Function(CheckOutChanged) _then)
      : super(_value, (v) => _then(v as CheckOutChanged));

  @override
  CheckOutChanged get _value => super._value as CheckOutChanged;

  @override
  $Res call({
    Object? checkOut = freezed,
  }) {
    return _then(CheckOutChanged(
      checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CheckOutChanged implements CheckOutChanged {
  const _$CheckOutChanged(this.checkOut);

  @override
  final DateTime? checkOut;

  @override
  String toString() {
    return 'RentAHomeEvent.checkOutChanged(checkOut: $checkOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckOutChanged &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(checkOut));

  @JsonKey(ignore: true)
  @override
  $CheckOutChangedCopyWith<CheckOutChanged> get copyWith =>
      _$CheckOutChangedCopyWithImpl<CheckOutChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return checkOutChanged(checkOut);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return checkOutChanged?.call(checkOut);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (checkOutChanged != null) {
      return checkOutChanged(checkOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return checkOutChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return checkOutChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (checkOutChanged != null) {
      return checkOutChanged(this);
    }
    return orElse();
  }
}

abstract class CheckOutChanged implements RentAHomeEvent {
  const factory CheckOutChanged(DateTime? checkOut) = _$CheckOutChanged;

  DateTime? get checkOut;
  @JsonKey(ignore: true)
  $CheckOutChangedCopyWith<CheckOutChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdultsAddCopyWith<$Res> {
  factory $AdultsAddCopyWith(AdultsAdd value, $Res Function(AdultsAdd) then) =
      _$AdultsAddCopyWithImpl<$Res>;
  $Res call({int increment});
}

/// @nodoc
class _$AdultsAddCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $AdultsAddCopyWith<$Res> {
  _$AdultsAddCopyWithImpl(AdultsAdd _value, $Res Function(AdultsAdd) _then)
      : super(_value, (v) => _then(v as AdultsAdd));

  @override
  AdultsAdd get _value => super._value as AdultsAdd;

  @override
  $Res call({
    Object? increment = freezed,
  }) {
    return _then(AdultsAdd(
      increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdultsAdd implements AdultsAdd {
  const _$AdultsAdd(this.increment);

  @override
  final int increment;

  @override
  String toString() {
    return 'RentAHomeEvent.adultsAdd(increment: $increment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdultsAdd &&
            const DeepCollectionEquality().equals(other.increment, increment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(increment));

  @JsonKey(ignore: true)
  @override
  $AdultsAddCopyWith<AdultsAdd> get copyWith =>
      _$AdultsAddCopyWithImpl<AdultsAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return adultsAdd(increment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return adultsAdd?.call(increment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (adultsAdd != null) {
      return adultsAdd(increment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return adultsAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return adultsAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (adultsAdd != null) {
      return adultsAdd(this);
    }
    return orElse();
  }
}

abstract class AdultsAdd implements RentAHomeEvent {
  const factory AdultsAdd(int increment) = _$AdultsAdd;

  int get increment;
  @JsonKey(ignore: true)
  $AdultsAddCopyWith<AdultsAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdultsRemoveCopyWith<$Res> {
  factory $AdultsRemoveCopyWith(
          AdultsRemove value, $Res Function(AdultsRemove) then) =
      _$AdultsRemoveCopyWithImpl<$Res>;
  $Res call({int decrement});
}

/// @nodoc
class _$AdultsRemoveCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $AdultsRemoveCopyWith<$Res> {
  _$AdultsRemoveCopyWithImpl(
      AdultsRemove _value, $Res Function(AdultsRemove) _then)
      : super(_value, (v) => _then(v as AdultsRemove));

  @override
  AdultsRemove get _value => super._value as AdultsRemove;

  @override
  $Res call({
    Object? decrement = freezed,
  }) {
    return _then(AdultsRemove(
      decrement == freezed
          ? _value.decrement
          : decrement // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdultsRemove implements AdultsRemove {
  const _$AdultsRemove(this.decrement);

  @override
  final int decrement;

  @override
  String toString() {
    return 'RentAHomeEvent.adultsRemove(decrement: $decrement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdultsRemove &&
            const DeepCollectionEquality().equals(other.decrement, decrement));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(decrement));

  @JsonKey(ignore: true)
  @override
  $AdultsRemoveCopyWith<AdultsRemove> get copyWith =>
      _$AdultsRemoveCopyWithImpl<AdultsRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return adultsRemove(decrement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return adultsRemove?.call(decrement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (adultsRemove != null) {
      return adultsRemove(decrement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return adultsRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return adultsRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (adultsRemove != null) {
      return adultsRemove(this);
    }
    return orElse();
  }
}

abstract class AdultsRemove implements RentAHomeEvent {
  const factory AdultsRemove(int decrement) = _$AdultsRemove;

  int get decrement;
  @JsonKey(ignore: true)
  $AdultsRemoveCopyWith<AdultsRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenAddCopyWith<$Res> {
  factory $ChildrenAddCopyWith(
          ChildrenAdd value, $Res Function(ChildrenAdd) then) =
      _$ChildrenAddCopyWithImpl<$Res>;
  $Res call({int increment});
}

/// @nodoc
class _$ChildrenAddCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $ChildrenAddCopyWith<$Res> {
  _$ChildrenAddCopyWithImpl(
      ChildrenAdd _value, $Res Function(ChildrenAdd) _then)
      : super(_value, (v) => _then(v as ChildrenAdd));

  @override
  ChildrenAdd get _value => super._value as ChildrenAdd;

  @override
  $Res call({
    Object? increment = freezed,
  }) {
    return _then(ChildrenAdd(
      increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChildrenAdd implements ChildrenAdd {
  const _$ChildrenAdd(this.increment);

  @override
  final int increment;

  @override
  String toString() {
    return 'RentAHomeEvent.childrenAdd(increment: $increment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChildrenAdd &&
            const DeepCollectionEquality().equals(other.increment, increment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(increment));

  @JsonKey(ignore: true)
  @override
  $ChildrenAddCopyWith<ChildrenAdd> get copyWith =>
      _$ChildrenAddCopyWithImpl<ChildrenAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return childrenAdd(increment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return childrenAdd?.call(increment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (childrenAdd != null) {
      return childrenAdd(increment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return childrenAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return childrenAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (childrenAdd != null) {
      return childrenAdd(this);
    }
    return orElse();
  }
}

abstract class ChildrenAdd implements RentAHomeEvent {
  const factory ChildrenAdd(int increment) = _$ChildrenAdd;

  int get increment;
  @JsonKey(ignore: true)
  $ChildrenAddCopyWith<ChildrenAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenRemoveCopyWith<$Res> {
  factory $ChildrenRemoveCopyWith(
          ChildrenRemove value, $Res Function(ChildrenRemove) then) =
      _$ChildrenRemoveCopyWithImpl<$Res>;
  $Res call({int decrement});
}

/// @nodoc
class _$ChildrenRemoveCopyWithImpl<$Res>
    extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $ChildrenRemoveCopyWith<$Res> {
  _$ChildrenRemoveCopyWithImpl(
      ChildrenRemove _value, $Res Function(ChildrenRemove) _then)
      : super(_value, (v) => _then(v as ChildrenRemove));

  @override
  ChildrenRemove get _value => super._value as ChildrenRemove;

  @override
  $Res call({
    Object? decrement = freezed,
  }) {
    return _then(ChildrenRemove(
      decrement == freezed
          ? _value.decrement
          : decrement // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChildrenRemove implements ChildrenRemove {
  const _$ChildrenRemove(this.decrement);

  @override
  final int decrement;

  @override
  String toString() {
    return 'RentAHomeEvent.childrenRemove(decrement: $decrement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChildrenRemove &&
            const DeepCollectionEquality().equals(other.decrement, decrement));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(decrement));

  @JsonKey(ignore: true)
  @override
  $ChildrenRemoveCopyWith<ChildrenRemove> get copyWith =>
      _$ChildrenRemoveCopyWithImpl<ChildrenRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return childrenRemove(decrement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return childrenRemove?.call(decrement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (childrenRemove != null) {
      return childrenRemove(decrement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return childrenRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return childrenRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (childrenRemove != null) {
      return childrenRemove(this);
    }
    return orElse();
  }
}

abstract class ChildrenRemove implements RentAHomeEvent {
  const factory ChildrenRemove(int decrement) = _$ChildrenRemove;

  int get decrement;
  @JsonKey(ignore: true)
  $ChildrenRemoveCopyWith<ChildrenRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetsAddCopyWith<$Res> {
  factory $PetsAddCopyWith(PetsAdd value, $Res Function(PetsAdd) then) =
      _$PetsAddCopyWithImpl<$Res>;
  $Res call({int increment});
}

/// @nodoc
class _$PetsAddCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $PetsAddCopyWith<$Res> {
  _$PetsAddCopyWithImpl(PetsAdd _value, $Res Function(PetsAdd) _then)
      : super(_value, (v) => _then(v as PetsAdd));

  @override
  PetsAdd get _value => super._value as PetsAdd;

  @override
  $Res call({
    Object? increment = freezed,
  }) {
    return _then(PetsAdd(
      increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PetsAdd implements PetsAdd {
  const _$PetsAdd(this.increment);

  @override
  final int increment;

  @override
  String toString() {
    return 'RentAHomeEvent.petsAdd(increment: $increment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PetsAdd &&
            const DeepCollectionEquality().equals(other.increment, increment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(increment));

  @JsonKey(ignore: true)
  @override
  $PetsAddCopyWith<PetsAdd> get copyWith =>
      _$PetsAddCopyWithImpl<PetsAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return petsAdd(increment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return petsAdd?.call(increment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (petsAdd != null) {
      return petsAdd(increment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return petsAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return petsAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (petsAdd != null) {
      return petsAdd(this);
    }
    return orElse();
  }
}

abstract class PetsAdd implements RentAHomeEvent {
  const factory PetsAdd(int increment) = _$PetsAdd;

  int get increment;
  @JsonKey(ignore: true)
  $PetsAddCopyWith<PetsAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetsRemoveCopyWith<$Res> {
  factory $PetsRemoveCopyWith(
          PetsRemove value, $Res Function(PetsRemove) then) =
      _$PetsRemoveCopyWithImpl<$Res>;
  $Res call({int decrement});
}

/// @nodoc
class _$PetsRemoveCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $PetsRemoveCopyWith<$Res> {
  _$PetsRemoveCopyWithImpl(PetsRemove _value, $Res Function(PetsRemove) _then)
      : super(_value, (v) => _then(v as PetsRemove));

  @override
  PetsRemove get _value => super._value as PetsRemove;

  @override
  $Res call({
    Object? decrement = freezed,
  }) {
    return _then(PetsRemove(
      decrement == freezed
          ? _value.decrement
          : decrement // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PetsRemove implements PetsRemove {
  const _$PetsRemove(this.decrement);

  @override
  final int decrement;

  @override
  String toString() {
    return 'RentAHomeEvent.petsRemove(decrement: $decrement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PetsRemove &&
            const DeepCollectionEquality().equals(other.decrement, decrement));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(decrement));

  @JsonKey(ignore: true)
  @override
  $PetsRemoveCopyWith<PetsRemove> get copyWith =>
      _$PetsRemoveCopyWithImpl<PetsRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return petsRemove(decrement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return petsRemove?.call(decrement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (petsRemove != null) {
      return petsRemove(decrement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return petsRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return petsRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (petsRemove != null) {
      return petsRemove(this);
    }
    return orElse();
  }
}

abstract class PetsRemove implements RentAHomeEvent {
  const factory PetsRemove(int decrement) = _$PetsRemove;

  int get decrement;
  @JsonKey(ignore: true)
  $PetsRemoveCopyWith<PetsRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res> extends _$RentAHomeEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

/// @nodoc

class _$Submit implements Submit {
  const _$Submit();

  @override
  String toString() {
    return 'RentAHomeEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Rental> optionOf, String? location)
        initialize,
    required TResult Function() watchAvailableHomes,
    required TResult Function(List<Home> homes) availableHomesReceived,
    required TResult Function(String location) locationChanged,
    required TResult Function(String paymentMethod) paymentMethodChanged,
    required TResult Function(List<String> images) imagesReceived,
    required TResult Function(Home home) homeChanged,
    required TResult Function(DateTime? checkIn) checkInChanged,
    required TResult Function(DateTime? checkOut) checkOutChanged,
    required TResult Function(int increment) adultsAdd,
    required TResult Function(int decrement) adultsRemove,
    required TResult Function(int increment) childrenAdd,
    required TResult Function(int decrement) childrenRemove,
    required TResult Function(int increment) petsAdd,
    required TResult Function(int decrement) petsRemove,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Rental> optionOf, String? location)? initialize,
    TResult Function()? watchAvailableHomes,
    TResult Function(List<Home> homes)? availableHomesReceived,
    TResult Function(String location)? locationChanged,
    TResult Function(String paymentMethod)? paymentMethodChanged,
    TResult Function(List<String> images)? imagesReceived,
    TResult Function(Home home)? homeChanged,
    TResult Function(DateTime? checkIn)? checkInChanged,
    TResult Function(DateTime? checkOut)? checkOutChanged,
    TResult Function(int increment)? adultsAdd,
    TResult Function(int decrement)? adultsRemove,
    TResult Function(int increment)? childrenAdd,
    TResult Function(int decrement)? childrenRemove,
    TResult Function(int increment)? petsAdd,
    TResult Function(int decrement)? petsRemove,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(WatchAvailableHomes value) watchAvailableHomes,
    required TResult Function(AvailableHomesReceived value)
        availableHomesReceived,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PaymentMethodChanged value) paymentMethodChanged,
    required TResult Function(ImagesReceived value) imagesReceived,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(CheckInChanged value) checkInChanged,
    required TResult Function(CheckOutChanged value) checkOutChanged,
    required TResult Function(AdultsAdd value) adultsAdd,
    required TResult Function(AdultsRemove value) adultsRemove,
    required TResult Function(ChildrenAdd value) childrenAdd,
    required TResult Function(ChildrenRemove value) childrenRemove,
    required TResult Function(PetsAdd value) petsAdd,
    required TResult Function(PetsRemove value) petsRemove,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(WatchAvailableHomes value)? watchAvailableHomes,
    TResult Function(AvailableHomesReceived value)? availableHomesReceived,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PaymentMethodChanged value)? paymentMethodChanged,
    TResult Function(ImagesReceived value)? imagesReceived,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(CheckInChanged value)? checkInChanged,
    TResult Function(CheckOutChanged value)? checkOutChanged,
    TResult Function(AdultsAdd value)? adultsAdd,
    TResult Function(AdultsRemove value)? adultsRemove,
    TResult Function(ChildrenAdd value)? childrenAdd,
    TResult Function(ChildrenRemove value)? childrenRemove,
    TResult Function(PetsAdd value)? petsAdd,
    TResult Function(PetsRemove value)? petsRemove,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements RentAHomeEvent {
  const factory Submit() = _$Submit;
}

/// @nodoc
class _$RentAHomeStateTearOff {
  const _$RentAHomeStateTearOff();

  _RentAHomeState call(
      {required DateTime? checkIn,
      required DateTime? checkOut,
      required String location,
      required Rental idealRental,
      required Home selectedHome,
      required List<String> homeImages,
      required List<Home> homes,
      required bool showErrorMessages,
      required bool isSaving,
      required Option<Either<Home, Unit>> saveFailureOrSuccessOption}) {
    return _RentAHomeState(
      checkIn: checkIn,
      checkOut: checkOut,
      location: location,
      idealRental: idealRental,
      selectedHome: selectedHome,
      homeImages: homeImages,
      homes: homes,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RentAHomeState = _$RentAHomeStateTearOff();

/// @nodoc
mixin _$RentAHomeState {
  DateTime? get checkIn => throw _privateConstructorUsedError;
  DateTime? get checkOut => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  Rental get idealRental => throw _privateConstructorUsedError;
  Home get selectedHome => throw _privateConstructorUsedError;
  List<String> get homeImages => throw _privateConstructorUsedError;
  List<Home> get homes => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<Home, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RentAHomeStateCopyWith<RentAHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentAHomeStateCopyWith<$Res> {
  factory $RentAHomeStateCopyWith(
          RentAHomeState value, $Res Function(RentAHomeState) then) =
      _$RentAHomeStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime? checkIn,
      DateTime? checkOut,
      String location,
      Rental idealRental,
      Home selectedHome,
      List<String> homeImages,
      List<Home> homes,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<Home, Unit>> saveFailureOrSuccessOption});

  $RentalCopyWith<$Res> get idealRental;
  $HomeCopyWith<$Res> get selectedHome;
}

/// @nodoc
class _$RentAHomeStateCopyWithImpl<$Res>
    implements $RentAHomeStateCopyWith<$Res> {
  _$RentAHomeStateCopyWithImpl(this._value, this._then);

  final RentAHomeState _value;
  // ignore: unused_field
  final $Res Function(RentAHomeState) _then;

  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? location = freezed,
    Object? idealRental = freezed,
    Object? selectedHome = freezed,
    Object? homeImages = freezed,
    Object? homes = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      idealRental: idealRental == freezed
          ? _value.idealRental
          : idealRental // ignore: cast_nullable_to_non_nullable
              as Rental,
      selectedHome: selectedHome == freezed
          ? _value.selectedHome
          : selectedHome // ignore: cast_nullable_to_non_nullable
              as Home,
      homeImages: homeImages == freezed
          ? _value.homeImages
          : homeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Home, Unit>>,
    ));
  }

  @override
  $RentalCopyWith<$Res> get idealRental {
    return $RentalCopyWith<$Res>(_value.idealRental, (value) {
      return _then(_value.copyWith(idealRental: value));
    });
  }

  @override
  $HomeCopyWith<$Res> get selectedHome {
    return $HomeCopyWith<$Res>(_value.selectedHome, (value) {
      return _then(_value.copyWith(selectedHome: value));
    });
  }
}

/// @nodoc
abstract class _$RentAHomeStateCopyWith<$Res>
    implements $RentAHomeStateCopyWith<$Res> {
  factory _$RentAHomeStateCopyWith(
          _RentAHomeState value, $Res Function(_RentAHomeState) then) =
      __$RentAHomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? checkIn,
      DateTime? checkOut,
      String location,
      Rental idealRental,
      Home selectedHome,
      List<String> homeImages,
      List<Home> homes,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<Home, Unit>> saveFailureOrSuccessOption});

  @override
  $RentalCopyWith<$Res> get idealRental;
  @override
  $HomeCopyWith<$Res> get selectedHome;
}

/// @nodoc
class __$RentAHomeStateCopyWithImpl<$Res>
    extends _$RentAHomeStateCopyWithImpl<$Res>
    implements _$RentAHomeStateCopyWith<$Res> {
  __$RentAHomeStateCopyWithImpl(
      _RentAHomeState _value, $Res Function(_RentAHomeState) _then)
      : super(_value, (v) => _then(v as _RentAHomeState));

  @override
  _RentAHomeState get _value => super._value as _RentAHomeState;

  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? location = freezed,
    Object? idealRental = freezed,
    Object? selectedHome = freezed,
    Object? homeImages = freezed,
    Object? homes = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_RentAHomeState(
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      idealRental: idealRental == freezed
          ? _value.idealRental
          : idealRental // ignore: cast_nullable_to_non_nullable
              as Rental,
      selectedHome: selectedHome == freezed
          ? _value.selectedHome
          : selectedHome // ignore: cast_nullable_to_non_nullable
              as Home,
      homeImages: homeImages == freezed
          ? _value.homeImages
          : homeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Home, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RentAHomeState implements _RentAHomeState {
  const _$_RentAHomeState(
      {required this.checkIn,
      required this.checkOut,
      required this.location,
      required this.idealRental,
      required this.selectedHome,
      required this.homeImages,
      required this.homes,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final DateTime? checkIn;
  @override
  final DateTime? checkOut;
  @override
  final String location;
  @override
  final Rental idealRental;
  @override
  final Home selectedHome;
  @override
  final List<String> homeImages;
  @override
  final List<Home> homes;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<Home, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'RentAHomeState(checkIn: $checkIn, checkOut: $checkOut, location: $location, idealRental: $idealRental, selectedHome: $selectedHome, homeImages: $homeImages, homes: $homes, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RentAHomeState &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.idealRental, idealRental) &&
            const DeepCollectionEquality()
                .equals(other.selectedHome, selectedHome) &&
            const DeepCollectionEquality()
                .equals(other.homeImages, homeImages) &&
            const DeepCollectionEquality().equals(other.homes, homes) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(checkOut),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(idealRental),
      const DeepCollectionEquality().hash(selectedHome),
      const DeepCollectionEquality().hash(homeImages),
      const DeepCollectionEquality().hash(homes),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$RentAHomeStateCopyWith<_RentAHomeState> get copyWith =>
      __$RentAHomeStateCopyWithImpl<_RentAHomeState>(this, _$identity);
}

abstract class _RentAHomeState implements RentAHomeState {
  const factory _RentAHomeState(
          {required DateTime? checkIn,
          required DateTime? checkOut,
          required String location,
          required Rental idealRental,
          required Home selectedHome,
          required List<String> homeImages,
          required List<Home> homes,
          required bool showErrorMessages,
          required bool isSaving,
          required Option<Either<Home, Unit>> saveFailureOrSuccessOption}) =
      _$_RentAHomeState;

  @override
  DateTime? get checkIn;
  @override
  DateTime? get checkOut;
  @override
  String get location;
  @override
  Rental get idealRental;
  @override
  Home get selectedHome;
  @override
  List<String> get homeImages;
  @override
  List<Home> get homes;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<Home, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RentAHomeStateCopyWith<_RentAHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
