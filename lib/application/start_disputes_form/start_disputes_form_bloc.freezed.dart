// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_disputes_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StartDisputesFormEventTearOff {
  const _$StartDisputesFormEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  HomeChanged homeChanged(String homeUuid) {
    return HomeChanged(
      homeUuid,
    );
  }

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  DescriptionChanged descriptionChanged(String description) {
    return DescriptionChanged(
      description,
    );
  }

  InitialStakeChanged initialStakeChanged(int tokens) {
    return InitialStakeChanged(
      tokens,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $StartDisputesFormEvent = _$StartDisputesFormEventTearOff();

/// @nodoc
mixin _$StartDisputesFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartDisputesFormEventCopyWith<$Res> {
  factory $StartDisputesFormEventCopyWith(StartDisputesFormEvent value,
          $Res Function(StartDisputesFormEvent) then) =
      _$StartDisputesFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartDisputesFormEventCopyWithImpl<$Res>
    implements $StartDisputesFormEventCopyWith<$Res> {
  _$StartDisputesFormEventCopyWithImpl(this._value, this._then);

  final StartDisputesFormEvent _value;
  // ignore: unused_field
  final $Res Function(StartDisputesFormEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
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
    return 'StartDisputesFormEvent.initialize()';
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
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
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
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements StartDisputesFormEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $HomeChangedCopyWith<$Res> {
  factory $HomeChangedCopyWith(
          HomeChanged value, $Res Function(HomeChanged) then) =
      _$HomeChangedCopyWithImpl<$Res>;
  $Res call({String homeUuid});
}

/// @nodoc
class _$HomeChangedCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
    implements $HomeChangedCopyWith<$Res> {
  _$HomeChangedCopyWithImpl(
      HomeChanged _value, $Res Function(HomeChanged) _then)
      : super(_value, (v) => _then(v as HomeChanged));

  @override
  HomeChanged get _value => super._value as HomeChanged;

  @override
  $Res call({
    Object? homeUuid = freezed,
  }) {
    return _then(HomeChanged(
      homeUuid == freezed
          ? _value.homeUuid
          : homeUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeChanged implements HomeChanged {
  const _$HomeChanged(this.homeUuid);

  @override
  final String homeUuid;

  @override
  String toString() {
    return 'StartDisputesFormEvent.homeChanged(homeUuid: $homeUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeChanged &&
            const DeepCollectionEquality().equals(other.homeUuid, homeUuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(homeUuid));

  @JsonKey(ignore: true)
  @override
  $HomeChangedCopyWith<HomeChanged> get copyWith =>
      _$HomeChangedCopyWithImpl<HomeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return homeChanged(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return homeChanged?.call(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (homeChanged != null) {
      return homeChanged(homeUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return homeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return homeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (homeChanged != null) {
      return homeChanged(this);
    }
    return orElse();
  }
}

abstract class HomeChanged implements StartDisputesFormEvent {
  const factory HomeChanged(String homeUuid) = _$HomeChanged;

  String get homeUuid;
  @JsonKey(ignore: true)
  $HomeChangedCopyWith<HomeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'StartDisputesFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements StartDisputesFormEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionChangedCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'StartDisputesFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements StartDisputesFormEvent {
  const factory DescriptionChanged(String description) = _$DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialStakeChangedCopyWith<$Res> {
  factory $InitialStakeChangedCopyWith(
          InitialStakeChanged value, $Res Function(InitialStakeChanged) then) =
      _$InitialStakeChangedCopyWithImpl<$Res>;
  $Res call({int tokens});
}

/// @nodoc
class _$InitialStakeChangedCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
    implements $InitialStakeChangedCopyWith<$Res> {
  _$InitialStakeChangedCopyWithImpl(
      InitialStakeChanged _value, $Res Function(InitialStakeChanged) _then)
      : super(_value, (v) => _then(v as InitialStakeChanged));

  @override
  InitialStakeChanged get _value => super._value as InitialStakeChanged;

  @override
  $Res call({
    Object? tokens = freezed,
  }) {
    return _then(InitialStakeChanged(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialStakeChanged implements InitialStakeChanged {
  const _$InitialStakeChanged(this.tokens);

  @override
  final int tokens;

  @override
  String toString() {
    return 'StartDisputesFormEvent.initialStakeChanged(tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialStakeChanged &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tokens));

  @JsonKey(ignore: true)
  @override
  $InitialStakeChangedCopyWith<InitialStakeChanged> get copyWith =>
      _$InitialStakeChangedCopyWithImpl<InitialStakeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return initialStakeChanged(tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return initialStakeChanged?.call(tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initialStakeChanged != null) {
      return initialStakeChanged(tokens);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return initialStakeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return initialStakeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (initialStakeChanged != null) {
      return initialStakeChanged(this);
    }
    return orElse();
  }
}

abstract class InitialStakeChanged implements StartDisputesFormEvent {
  const factory InitialStakeChanged(int tokens) = _$InitialStakeChanged;

  int get tokens;
  @JsonKey(ignore: true)
  $InitialStakeChangedCopyWith<InitialStakeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res>
    extends _$StartDisputesFormEventCopyWithImpl<$Res>
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
    return 'StartDisputesFormEvent.submit()';
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
    required TResult Function() initialize,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int tokens)? initialStakeChanged,
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
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements StartDisputesFormEvent {
  const factory Submit() = _$Submit;
}

/// @nodoc
class _$StartDisputesFormStateTearOff {
  const _$StartDisputesFormStateTearOff();

  _StartDisputesFormState call(
      {required Dispute dispute,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption}) {
    return _StartDisputesFormState(
      dispute: dispute,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $StartDisputesFormState = _$StartDisputesFormStateTearOff();

/// @nodoc
mixin _$StartDisputesFormState {
  Dispute get dispute => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<Dispute, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartDisputesFormStateCopyWith<StartDisputesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartDisputesFormStateCopyWith<$Res> {
  factory $StartDisputesFormStateCopyWith(StartDisputesFormState value,
          $Res Function(StartDisputesFormState) then) =
      _$StartDisputesFormStateCopyWithImpl<$Res>;
  $Res call(
      {Dispute dispute,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<Dispute, Unit>> saveFailureOrSuccessOption});

  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class _$StartDisputesFormStateCopyWithImpl<$Res>
    implements $StartDisputesFormStateCopyWith<$Res> {
  _$StartDisputesFormStateCopyWithImpl(this._value, this._then);

  final StartDisputesFormState _value;
  // ignore: unused_field
  final $Res Function(StartDisputesFormState) _then;

  @override
  $Res call({
    Object? dispute = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      dispute: dispute == freezed
          ? _value.dispute
          : dispute // ignore: cast_nullable_to_non_nullable
              as Dispute,
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
              as Option<Either<Dispute, Unit>>,
    ));
  }

  @override
  $DisputeCopyWith<$Res> get dispute {
    return $DisputeCopyWith<$Res>(_value.dispute, (value) {
      return _then(_value.copyWith(dispute: value));
    });
  }
}

/// @nodoc
abstract class _$StartDisputesFormStateCopyWith<$Res>
    implements $StartDisputesFormStateCopyWith<$Res> {
  factory _$StartDisputesFormStateCopyWith(_StartDisputesFormState value,
          $Res Function(_StartDisputesFormState) then) =
      __$StartDisputesFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Dispute dispute,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<Dispute, Unit>> saveFailureOrSuccessOption});

  @override
  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class __$StartDisputesFormStateCopyWithImpl<$Res>
    extends _$StartDisputesFormStateCopyWithImpl<$Res>
    implements _$StartDisputesFormStateCopyWith<$Res> {
  __$StartDisputesFormStateCopyWithImpl(_StartDisputesFormState _value,
      $Res Function(_StartDisputesFormState) _then)
      : super(_value, (v) => _then(v as _StartDisputesFormState));

  @override
  _StartDisputesFormState get _value => super._value as _StartDisputesFormState;

  @override
  $Res call({
    Object? dispute = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_StartDisputesFormState(
      dispute: dispute == freezed
          ? _value.dispute
          : dispute // ignore: cast_nullable_to_non_nullable
              as Dispute,
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
              as Option<Either<Dispute, Unit>>,
    ));
  }
}

/// @nodoc

class _$_StartDisputesFormState implements _StartDisputesFormState {
  const _$_StartDisputesFormState(
      {required this.dispute,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Dispute dispute;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<Dispute, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'StartDisputesFormState(dispute: $dispute, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartDisputesFormState &&
            const DeepCollectionEquality().equals(other.dispute, dispute) &&
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
      const DeepCollectionEquality().hash(dispute),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$StartDisputesFormStateCopyWith<_StartDisputesFormState> get copyWith =>
      __$StartDisputesFormStateCopyWithImpl<_StartDisputesFormState>(
          this, _$identity);
}

abstract class _StartDisputesFormState implements StartDisputesFormState {
  const factory _StartDisputesFormState(
          {required Dispute dispute,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSaving,
          required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption}) =
      _$_StartDisputesFormState;

  @override
  Dispute get dispute;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<Dispute, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$StartDisputesFormStateCopyWith<_StartDisputesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
