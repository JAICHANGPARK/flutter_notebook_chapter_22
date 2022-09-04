// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  List<TeamMember>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call({List<TeamMember>? results});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  $Res call({List<TeamMember>? results});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, (v) => _then(v as _$_Team));

  @override
  _$_Team get _value => super._value as _$_Team;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_Team(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  _$_Team({final List<TeamMember>? results}) : _results = results;

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  final List<TeamMember>? _results;
  @override
  List<TeamMember>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Team(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  factory _Team({final List<TeamMember>? results}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  List<TeamMember>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return _TeamMember.fromJson(json);
}

/// @nodoc
mixin _$TeamMember {
  String? get gender => throw _privateConstructorUsedError;
  ProfilePictures? get picture => throw _privateConstructorUsedError;
  MemberName? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res>;
  $Res call({String? gender, ProfilePictures? picture, MemberName? name});

  $ProfilePicturesCopyWith<$Res>? get picture;
  $MemberNameCopyWith<$Res>? get name;
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res> implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  final TeamMember _value;
  // ignore: unused_field
  final $Res Function(TeamMember) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? picture = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as ProfilePictures?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MemberName?,
    ));
  }

  @override
  $ProfilePicturesCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $ProfilePicturesCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }

  @override
  $MemberNameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $MemberNameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$$_TeamMemberCopyWith<$Res>
    implements $TeamMemberCopyWith<$Res> {
  factory _$$_TeamMemberCopyWith(
          _$_TeamMember value, $Res Function(_$_TeamMember) then) =
      __$$_TeamMemberCopyWithImpl<$Res>;
  @override
  $Res call({String? gender, ProfilePictures? picture, MemberName? name});

  @override
  $ProfilePicturesCopyWith<$Res>? get picture;
  @override
  $MemberNameCopyWith<$Res>? get name;
}

/// @nodoc
class __$$_TeamMemberCopyWithImpl<$Res> extends _$TeamMemberCopyWithImpl<$Res>
    implements _$$_TeamMemberCopyWith<$Res> {
  __$$_TeamMemberCopyWithImpl(
      _$_TeamMember _value, $Res Function(_$_TeamMember) _then)
      : super(_value, (v) => _then(v as _$_TeamMember));

  @override
  _$_TeamMember get _value => super._value as _$_TeamMember;

  @override
  $Res call({
    Object? gender = freezed,
    Object? picture = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TeamMember(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as ProfilePictures?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MemberName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamMember implements _TeamMember {
  _$_TeamMember({this.gender, this.picture, this.name});

  factory _$_TeamMember.fromJson(Map<String, dynamic> json) =>
      _$$_TeamMemberFromJson(json);

  @override
  final String? gender;
  @override
  final ProfilePictures? picture;
  @override
  final MemberName? name;

  @override
  String toString() {
    return 'TeamMember(gender: $gender, picture: $picture, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamMember &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TeamMemberCopyWith<_$_TeamMember> get copyWith =>
      __$$_TeamMemberCopyWithImpl<_$_TeamMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamMemberToJson(
      this,
    );
  }
}

abstract class _TeamMember implements TeamMember {
  factory _TeamMember(
      {final String? gender,
      final ProfilePictures? picture,
      final MemberName? name}) = _$_TeamMember;

  factory _TeamMember.fromJson(Map<String, dynamic> json) =
      _$_TeamMember.fromJson;

  @override
  String? get gender;
  @override
  ProfilePictures? get picture;
  @override
  MemberName? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TeamMemberCopyWith<_$_TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePictures _$ProfilePicturesFromJson(Map<String, dynamic> json) {
  return _ProfilePictures.fromJson(json);
}

/// @nodoc
mixin _$ProfilePictures {
  String? get large => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePicturesCopyWith<ProfilePictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePicturesCopyWith<$Res> {
  factory $ProfilePicturesCopyWith(
          ProfilePictures value, $Res Function(ProfilePictures) then) =
      _$ProfilePicturesCopyWithImpl<$Res>;
  $Res call({String? large, String? medium});
}

/// @nodoc
class _$ProfilePicturesCopyWithImpl<$Res>
    implements $ProfilePicturesCopyWith<$Res> {
  _$ProfilePicturesCopyWithImpl(this._value, this._then);

  final ProfilePictures _value;
  // ignore: unused_field
  final $Res Function(ProfilePictures) _then;

  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
  }) {
    return _then(_value.copyWith(
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfilePicturesCopyWith<$Res>
    implements $ProfilePicturesCopyWith<$Res> {
  factory _$$_ProfilePicturesCopyWith(
          _$_ProfilePictures value, $Res Function(_$_ProfilePictures) then) =
      __$$_ProfilePicturesCopyWithImpl<$Res>;
  @override
  $Res call({String? large, String? medium});
}

/// @nodoc
class __$$_ProfilePicturesCopyWithImpl<$Res>
    extends _$ProfilePicturesCopyWithImpl<$Res>
    implements _$$_ProfilePicturesCopyWith<$Res> {
  __$$_ProfilePicturesCopyWithImpl(
      _$_ProfilePictures _value, $Res Function(_$_ProfilePictures) _then)
      : super(_value, (v) => _then(v as _$_ProfilePictures));

  @override
  _$_ProfilePictures get _value => super._value as _$_ProfilePictures;

  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
  }) {
    return _then(_$_ProfilePictures(
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePictures implements _ProfilePictures {
  _$_ProfilePictures({this.large, this.medium});

  factory _$_ProfilePictures.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePicturesFromJson(json);

  @override
  final String? large;
  @override
  final String? medium;

  @override
  String toString() {
    return 'ProfilePictures(large: $large, medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePictures &&
            const DeepCollectionEquality().equals(other.large, large) &&
            const DeepCollectionEquality().equals(other.medium, medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(large),
      const DeepCollectionEquality().hash(medium));

  @JsonKey(ignore: true)
  @override
  _$$_ProfilePicturesCopyWith<_$_ProfilePictures> get copyWith =>
      __$$_ProfilePicturesCopyWithImpl<_$_ProfilePictures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePicturesToJson(
      this,
    );
  }
}

abstract class _ProfilePictures implements ProfilePictures {
  factory _ProfilePictures({final String? large, final String? medium}) =
      _$_ProfilePictures;

  factory _ProfilePictures.fromJson(Map<String, dynamic> json) =
      _$_ProfilePictures.fromJson;

  @override
  String? get large;
  @override
  String? get medium;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePicturesCopyWith<_$_ProfilePictures> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberName _$MemberNameFromJson(Map<String, dynamic> json) {
  return _MemberName.fromJson(json);
}

/// @nodoc
mixin _$MemberName {
  String? get title => throw _privateConstructorUsedError;
  String? get first => throw _privateConstructorUsedError;
  String? get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberNameCopyWith<MemberName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberNameCopyWith<$Res> {
  factory $MemberNameCopyWith(
          MemberName value, $Res Function(MemberName) then) =
      _$MemberNameCopyWithImpl<$Res>;
  $Res call({String? title, String? first, String? last});
}

/// @nodoc
class _$MemberNameCopyWithImpl<$Res> implements $MemberNameCopyWith<$Res> {
  _$MemberNameCopyWithImpl(this._value, this._then);

  final MemberName _value;
  // ignore: unused_field
  final $Res Function(MemberName) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberNameCopyWith<$Res>
    implements $MemberNameCopyWith<$Res> {
  factory _$$_MemberNameCopyWith(
          _$_MemberName value, $Res Function(_$_MemberName) then) =
      __$$_MemberNameCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? first, String? last});
}

/// @nodoc
class __$$_MemberNameCopyWithImpl<$Res> extends _$MemberNameCopyWithImpl<$Res>
    implements _$$_MemberNameCopyWith<$Res> {
  __$$_MemberNameCopyWithImpl(
      _$_MemberName _value, $Res Function(_$_MemberName) _then)
      : super(_value, (v) => _then(v as _$_MemberName));

  @override
  _$_MemberName get _value => super._value as _$_MemberName;

  @override
  $Res call({
    Object? title = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_$_MemberName(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberName implements _MemberName {
  _$_MemberName({this.title, this.first, this.last});

  factory _$_MemberName.fromJson(Map<String, dynamic> json) =>
      _$$_MemberNameFromJson(json);

  @override
  final String? title;
  @override
  final String? first;
  @override
  final String? last;

  @override
  String toString() {
    return 'MemberName(title: $title, first: $first, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberName &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.last, last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(last));

  @JsonKey(ignore: true)
  @override
  _$$_MemberNameCopyWith<_$_MemberName> get copyWith =>
      __$$_MemberNameCopyWithImpl<_$_MemberName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberNameToJson(
      this,
    );
  }
}

abstract class _MemberName implements MemberName {
  factory _MemberName(
      {final String? title,
      final String? first,
      final String? last}) = _$_MemberName;

  factory _MemberName.fromJson(Map<String, dynamic> json) =
      _$_MemberName.fromJson;

  @override
  String? get title;
  @override
  String? get first;
  @override
  String? get last;
  @override
  @JsonKey(ignore: true)
  _$$_MemberNameCopyWith<_$_MemberName> get copyWith =>
      throw _privateConstructorUsedError;
}
