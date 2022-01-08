// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_local_activities_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyLocalActivitiesFormEventTearOff {
  const _$MyLocalActivitiesFormEventTearOff();

  Initialize initialize(Option<LocalActivity> initialActivityOption) {
    return Initialize(
      initialActivityOption,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  LocationChanged locationChanged(String location) {
    return LocationChanged(
      location,
    );
  }

  PriceChanged priceChanged(double price) {
    return PriceChanged(
      price,
    );
  }

  ContactChanged contactChanged(int contact) {
    return ContactChanged(
      contact,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $MyLocalActivitiesFormEvent = _$MyLocalActivitiesFormEventTearOff();

/// @nodoc
mixin _$MyLocalActivitiesFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocalActivitiesFormEventCopyWith<$Res> {
  factory $MyLocalActivitiesFormEventCopyWith(MyLocalActivitiesFormEvent value,
          $Res Function(MyLocalActivitiesFormEvent) then) =
      _$MyLocalActivitiesFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
    implements $MyLocalActivitiesFormEventCopyWith<$Res> {
  _$MyLocalActivitiesFormEventCopyWithImpl(this._value, this._then);

  final MyLocalActivitiesFormEvent _value;
  // ignore: unused_field
  final $Res Function(MyLocalActivitiesFormEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({Option<LocalActivity> initialActivityOption});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? initialActivityOption = freezed,
  }) {
    return _then(Initialize(
      initialActivityOption == freezed
          ? _value.initialActivityOption
          : initialActivityOption // ignore: cast_nullable_to_non_nullable
              as Option<LocalActivity>,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.initialActivityOption);

  @override
  final Option<LocalActivity> initialActivityOption;

  @override
  String toString() {
    return 'MyLocalActivitiesFormEvent.initialize(initialActivityOption: $initialActivityOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality()
                .equals(other.initialActivityOption, initialActivityOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialActivityOption));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return initialize(initialActivityOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return initialize?.call(initialActivityOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(initialActivityOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements MyLocalActivitiesFormEvent {
  const factory Initialize(Option<LocalActivity> initialActivityOption) =
      _$Initialize;

  Option<LocalActivity> get initialActivityOption;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'MyLocalActivitiesFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements MyLocalActivitiesFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
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
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
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
    return 'MyLocalActivitiesFormEvent.locationChanged(location: $location)';
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
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class LocationChanged implements MyLocalActivitiesFormEvent {
  const factory LocationChanged(String location) = _$LocationChanged;

  String get location;
  @JsonKey(ignore: true)
  $LocationChangedCopyWith<LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangedCopyWith<$Res> {
  factory $PriceChangedCopyWith(
          PriceChanged value, $Res Function(PriceChanged) then) =
      _$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceChangedCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
    implements $PriceChangedCopyWith<$Res> {
  _$PriceChangedCopyWithImpl(
      PriceChanged _value, $Res Function(PriceChanged) _then)
      : super(_value, (v) => _then(v as PriceChanged));

  @override
  PriceChanged get _value => super._value as PriceChanged;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(PriceChanged(
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceChanged implements PriceChanged {
  const _$PriceChanged(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'MyLocalActivitiesFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceChanged &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      _$PriceChangedCopyWithImpl<PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return priceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements MyLocalActivitiesFormEvent {
  const factory PriceChanged(double price) = _$PriceChanged;

  double get price;
  @JsonKey(ignore: true)
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactChangedCopyWith<$Res> {
  factory $ContactChangedCopyWith(
          ContactChanged value, $Res Function(ContactChanged) then) =
      _$ContactChangedCopyWithImpl<$Res>;
  $Res call({int contact});
}

/// @nodoc
class _$ContactChangedCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
    implements $ContactChangedCopyWith<$Res> {
  _$ContactChangedCopyWithImpl(
      ContactChanged _value, $Res Function(ContactChanged) _then)
      : super(_value, (v) => _then(v as ContactChanged));

  @override
  ContactChanged get _value => super._value as ContactChanged;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(ContactChanged(
      contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContactChanged implements ContactChanged {
  const _$ContactChanged(this.contact);

  @override
  final int contact;

  @override
  String toString() {
    return 'MyLocalActivitiesFormEvent.contactChanged(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactChanged &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  $ContactChangedCopyWith<ContactChanged> get copyWith =>
      _$ContactChangedCopyWithImpl<ContactChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return contactChanged(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return contactChanged?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (contactChanged != null) {
      return contactChanged(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return contactChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return contactChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (contactChanged != null) {
      return contactChanged(this);
    }
    return orElse();
  }
}

abstract class ContactChanged implements MyLocalActivitiesFormEvent {
  const factory ContactChanged(int contact) = _$ContactChanged;

  int get contact;
  @JsonKey(ignore: true)
  $ContactChangedCopyWith<ContactChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormEventCopyWithImpl<$Res>
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
    return 'MyLocalActivitiesFormEvent.submit()';
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
    required TResult Function(Option<LocalActivity> initialActivityOption)
        initialize,
    required TResult Function(String name) nameChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int contact) contactChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LocalActivity> initialActivityOption)? initialize,
    TResult Function(String name)? nameChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int contact)? contactChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(ContactChanged value) contactChanged,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(ContactChanged value)? contactChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements MyLocalActivitiesFormEvent {
  const factory Submit() = _$Submit;
}

/// @nodoc
class _$MyLocalActivitiesFormStateTearOff {
  const _$MyLocalActivitiesFormStateTearOff();

  _MyLocalActivitiesFormState call(
      {required LocalActivity activity,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<LocalActivity, Unit>>
          saveFailureOrSuccessOption}) {
    return _MyLocalActivitiesFormState(
      activity: activity,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $MyLocalActivitiesFormState = _$MyLocalActivitiesFormStateTearOff();

/// @nodoc
mixin _$MyLocalActivitiesFormState {
  LocalActivity get activity => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<LocalActivity, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyLocalActivitiesFormStateCopyWith<MyLocalActivitiesFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocalActivitiesFormStateCopyWith<$Res> {
  factory $MyLocalActivitiesFormStateCopyWith(MyLocalActivitiesFormState value,
          $Res Function(MyLocalActivitiesFormState) then) =
      _$MyLocalActivitiesFormStateCopyWithImpl<$Res>;
  $Res call(
      {LocalActivity activity,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<LocalActivity, Unit>> saveFailureOrSuccessOption});

  $LocalActivityCopyWith<$Res> get activity;
}

/// @nodoc
class _$MyLocalActivitiesFormStateCopyWithImpl<$Res>
    implements $MyLocalActivitiesFormStateCopyWith<$Res> {
  _$MyLocalActivitiesFormStateCopyWithImpl(this._value, this._then);

  final MyLocalActivitiesFormState _value;
  // ignore: unused_field
  final $Res Function(MyLocalActivitiesFormState) _then;

  @override
  $Res call({
    Object? activity = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as LocalActivity,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocalActivity, Unit>>,
    ));
  }

  @override
  $LocalActivityCopyWith<$Res> get activity {
    return $LocalActivityCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc
abstract class _$MyLocalActivitiesFormStateCopyWith<$Res>
    implements $MyLocalActivitiesFormStateCopyWith<$Res> {
  factory _$MyLocalActivitiesFormStateCopyWith(
          _MyLocalActivitiesFormState value,
          $Res Function(_MyLocalActivitiesFormState) then) =
      __$MyLocalActivitiesFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocalActivity activity,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<LocalActivity, Unit>> saveFailureOrSuccessOption});

  @override
  $LocalActivityCopyWith<$Res> get activity;
}

/// @nodoc
class __$MyLocalActivitiesFormStateCopyWithImpl<$Res>
    extends _$MyLocalActivitiesFormStateCopyWithImpl<$Res>
    implements _$MyLocalActivitiesFormStateCopyWith<$Res> {
  __$MyLocalActivitiesFormStateCopyWithImpl(_MyLocalActivitiesFormState _value,
      $Res Function(_MyLocalActivitiesFormState) _then)
      : super(_value, (v) => _then(v as _MyLocalActivitiesFormState));

  @override
  _MyLocalActivitiesFormState get _value =>
      super._value as _MyLocalActivitiesFormState;

  @override
  $Res call({
    Object? activity = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_MyLocalActivitiesFormState(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as LocalActivity,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocalActivity, Unit>>,
    ));
  }
}

/// @nodoc

class _$_MyLocalActivitiesFormState implements _MyLocalActivitiesFormState {
  const _$_MyLocalActivitiesFormState(
      {required this.activity,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final LocalActivity activity;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<LocalActivity, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'MyLocalActivitiesFormState(activity: $activity, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyLocalActivitiesFormState &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$MyLocalActivitiesFormStateCopyWith<_MyLocalActivitiesFormState>
      get copyWith => __$MyLocalActivitiesFormStateCopyWithImpl<
          _MyLocalActivitiesFormState>(this, _$identity);
}

abstract class _MyLocalActivitiesFormState
    implements MyLocalActivitiesFormState {
  const factory _MyLocalActivitiesFormState(
      {required LocalActivity activity,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<LocalActivity, Unit>>
          saveFailureOrSuccessOption}) = _$_MyLocalActivitiesFormState;

  @override
  LocalActivity get activity;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<LocalActivity, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$MyLocalActivitiesFormStateCopyWith<_MyLocalActivitiesFormState>
      get copyWith => throw _privateConstructorUsedError;
}
