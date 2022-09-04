import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_member.freezed.dart';

part 'team_member.g.dart';

@freezed
class Team with _$Team {
  factory Team({
    List<TeamMember> results;
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class TeamMember with _$TeamMember {
  factory TeamMember({
    String? gender,
    ProfilePictures? picture,
  }) = _TeamMember;

  factory TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);
}

@freezed
class ProfilePictures with _$ProfilePictures {
  factory ProfilePictures({
    String? large,
    String? medium,
  }) = _ProfilePictures;

  factory ProfilePictures.fromJson(Map<String, dynamic> json) => _$ProfilePicturesFromJson(json);
}
