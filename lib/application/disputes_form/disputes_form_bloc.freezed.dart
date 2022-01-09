// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'disputes_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DisputesFormEventTearOff {
  const _$DisputesFormEventTearOff();

  Initialize initialize(DisputeCategory disputeCategory) {
    return Initialize(
      disputeCategory,
    );
  }

  CategoryChanged categoryChanged(DisputeCategory category) {
    return CategoryChanged(
      category,
    );
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

  InitialStakeChanged initialStakeChanged(double tokens) {
    return InitialStakeChanged(
      tokens,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $DisputesFormEvent = _$DisputesFormEventTearOff();

/// @nodoc
mixin _$DisputesFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
abstract class $DisputesFormEventCopyWith<$Res> {
  factory $DisputesFormEventCopyWith(
          DisputesFormEvent value, $Res Function(DisputesFormEvent) then) =
      _$DisputesFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisputesFormEventCopyWithImpl<$Res>
    implements $DisputesFormEventCopyWith<$Res> {
  _$DisputesFormEventCopyWithImpl(this._value, this._then);

  final DisputesFormEvent _value;
  // ignore: unused_field
  final $Res Function(DisputesFormEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({DisputeCategory disputeCategory});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$DisputesFormEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? disputeCategory = freezed,
  }) {
    return _then(Initialize(
      disputeCategory == freezed
          ? _value.disputeCategory
          : disputeCategory // ignore: cast_nullable_to_non_nullable
              as DisputeCategory,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.disputeCategory);

  @override
  final DisputeCategory disputeCategory;

  @override
  String toString() {
    return 'DisputesFormEvent.initialize(disputeCategory: $disputeCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality()
                .equals(other.disputeCategory, disputeCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disputeCategory));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return initialize(disputeCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return initialize?.call(disputeCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(disputeCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class Initialize implements DisputesFormEvent {
  const factory Initialize(DisputeCategory disputeCategory) = _$Initialize;

  DisputeCategory get disputeCategory;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryChangedCopyWith<$Res> {
  factory $CategoryChangedCopyWith(
          CategoryChanged value, $Res Function(CategoryChanged) then) =
      _$CategoryChangedCopyWithImpl<$Res>;
  $Res call({DisputeCategory category});
}

/// @nodoc
class _$CategoryChangedCopyWithImpl<$Res>
    extends _$DisputesFormEventCopyWithImpl<$Res>
    implements $CategoryChangedCopyWith<$Res> {
  _$CategoryChangedCopyWithImpl(
      CategoryChanged _value, $Res Function(CategoryChanged) _then)
      : super(_value, (v) => _then(v as CategoryChanged));

  @override
  CategoryChanged get _value => super._value as CategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(CategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DisputeCategory,
    ));
  }
}

/// @nodoc

class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged(this.category);

  @override
  final DisputeCategory category;

  @override
  String toString() {
    return 'DisputesFormEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryChanged &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      _$CategoryChangedCopyWithImpl<CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(HomeChanged value) homeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(InitialStakeChanged value) initialStakeChanged,
    required TResult Function(Submit value) submit,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(HomeChanged value)? homeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(InitialStakeChanged value)? initialStakeChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements DisputesFormEvent {
  const factory CategoryChanged(DisputeCategory category) = _$CategoryChanged;

  DisputeCategory get category;
  @JsonKey(ignore: true)
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$DisputesFormEventCopyWithImpl<$Res>
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
    return 'DisputesFormEvent.homeChanged(homeUuid: $homeUuid)';
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
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return homeChanged(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return homeChanged?.call(homeUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
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
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class HomeChanged implements DisputesFormEvent {
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
    extends _$DisputesFormEventCopyWithImpl<$Res>
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
    return 'DisputesFormEvent.titleChanged(title: $title)';
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
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
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
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class TitleChanged implements DisputesFormEvent {
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
    extends _$DisputesFormEventCopyWithImpl<$Res>
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
    return 'DisputesFormEvent.descriptionChanged(description: $description)';
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
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
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
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class DescriptionChanged implements DisputesFormEvent {
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
  $Res call({double tokens});
}

/// @nodoc
class _$InitialStakeChangedCopyWithImpl<$Res>
    extends _$DisputesFormEventCopyWithImpl<$Res>
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
              as double,
    ));
  }
}

/// @nodoc

class _$InitialStakeChanged implements InitialStakeChanged {
  const _$InitialStakeChanged(this.tokens);

  @override
  final double tokens;

  @override
  String toString() {
    return 'DisputesFormEvent.initialStakeChanged(tokens: $tokens)';
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
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return initialStakeChanged(tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return initialStakeChanged?.call(tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
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
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class InitialStakeChanged implements DisputesFormEvent {
  const factory InitialStakeChanged(double tokens) = _$InitialStakeChanged;

  double get tokens;
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
class _$SubmitCopyWithImpl<$Res> extends _$DisputesFormEventCopyWithImpl<$Res>
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
    return 'DisputesFormEvent.submit()';
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
    required TResult Function(DisputeCategory disputeCategory) initialize,
    required TResult Function(DisputeCategory category) categoryChanged,
    required TResult Function(String homeUuid) homeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double tokens) initialStakeChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeCategory disputeCategory)? initialize,
    TResult Function(DisputeCategory category)? categoryChanged,
    TResult Function(String homeUuid)? homeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double tokens)? initialStakeChanged,
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
    required TResult Function(CategoryChanged value) categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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
    TResult Function(CategoryChanged value)? categoryChanged,
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

abstract class Submit implements DisputesFormEvent {
  const factory Submit() = _$Submit;
}

/// @nodoc
class _$DisputesFormStateTearOff {
  const _$DisputesFormStateTearOff();

  tDisputesFormState call(
      {required Dispute dispute,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption}) {
    return tDisputesFormState(
      dispute: dispute,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $DisputesFormState = _$DisputesFormStateTearOff();

/// @nodoc
mixin _$DisputesFormState {
  Dispute get dispute => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<Dispute, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisputesFormStateCopyWith<DisputesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputesFormStateCopyWith<$Res> {
  factory $DisputesFormStateCopyWith(
          DisputesFormState value, $Res Function(DisputesFormState) then) =
      _$DisputesFormStateCopyWithImpl<$Res>;
  $Res call(
      {Dispute dispute,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<Dispute, Unit>> saveFailureOrSuccessOption});

  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class _$DisputesFormStateCopyWithImpl<$Res>
    implements $DisputesFormStateCopyWith<$Res> {
  _$DisputesFormStateCopyWithImpl(this._value, this._then);

  final DisputesFormState _value;
  // ignore: unused_field
  final $Res Function(DisputesFormState) _then;

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
abstract class $tDisputesFormStateCopyWith<$Res>
    implements $DisputesFormStateCopyWith<$Res> {
  factory $tDisputesFormStateCopyWith(
          tDisputesFormState value, $Res Function(tDisputesFormState) then) =
      _$tDisputesFormStateCopyWithImpl<$Res>;
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
class _$tDisputesFormStateCopyWithImpl<$Res>
    extends _$DisputesFormStateCopyWithImpl<$Res>
    implements $tDisputesFormStateCopyWith<$Res> {
  _$tDisputesFormStateCopyWithImpl(
      tDisputesFormState _value, $Res Function(tDisputesFormState) _then)
      : super(_value, (v) => _then(v as tDisputesFormState));

  @override
  tDisputesFormState get _value => super._value as tDisputesFormState;

  @override
  $Res call({
    Object? dispute = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(tDisputesFormState(
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

class _$tDisputesFormState implements tDisputesFormState {
  const _$tDisputesFormState(
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
    return 'DisputesFormState(dispute: $dispute, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is tDisputesFormState &&
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
  $tDisputesFormStateCopyWith<tDisputesFormState> get copyWith =>
      _$tDisputesFormStateCopyWithImpl<tDisputesFormState>(this, _$identity);
}

abstract class tDisputesFormState implements DisputesFormState {
  const factory tDisputesFormState(
          {required Dispute dispute,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSaving,
          required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption}) =
      _$tDisputesFormState;

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
  $tDisputesFormStateCopyWith<tDisputesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
