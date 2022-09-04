// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TeamMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_TeamMember _$$_TeamMemberFromJson(Map<String, dynamic> json) =>
    _$_TeamMember(
      gender: json['gender'] as String?,
      picture: json['picture'] == null
          ? null
          : ProfilePictures.fromJson(json['picture'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : MemberName.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamMemberToJson(_$_TeamMember instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'picture': instance.picture,
      'name': instance.name,
    };

_$_ProfilePictures _$$_ProfilePicturesFromJson(Map<String, dynamic> json) =>
    _$_ProfilePictures(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
    );

Map<String, dynamic> _$$_ProfilePicturesToJson(_$_ProfilePictures instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
    };

_$_MemberName _$$_MemberNameFromJson(Map<String, dynamic> json) =>
    _$_MemberName(
      title: json['title'] as String?,
      first: json['first'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$$_MemberNameToJson(_$_MemberName instance) =>
    <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };
