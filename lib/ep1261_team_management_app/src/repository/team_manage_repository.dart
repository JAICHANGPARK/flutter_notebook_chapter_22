import 'dart:convert';

import 'package:flutter_notebook_chapter_22/ep1261_team_management_app/src/model/team_member.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final teamManagementRepository = Provider((ref) => TeamManagementRepository());

final getTeamMembers = FutureProvider<Team?>((ref) async {
  final result = await ref.read(teamManagementRepository).fetchTeamMembers();
  print(result);
  return result;
});

class TeamManagementRepository {
  Future<Team?> fetchTeamMembers() async {
    var response = await http.get(Uri.parse("https://randomuser.me/api/?results=10"));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      Team team = Team.fromJson(jsonBody);
      // print(team.toString());
      return team;
    }
    return null;
  }
}
