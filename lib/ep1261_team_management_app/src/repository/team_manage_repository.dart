import 'dart:convert';

import 'package:flutter_notebook_chapter_22/ep1261_team_management_app/src/model/team_member.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final teamManagementRepository = Provider((ref) => TeamManagementRepository());

final getTeamMembers = FutureProvider((ref)async{

  await ref.read(teamManagementRepository).fetchTeamMembers();
});

class TeamManagementRepository {
  Future<TeamMember?> fetchTeamMembers() async {
    var response = await http.get(Uri.parse("https://randomuser.me/api/?results=10"));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      print(jsonBody);
      if(jsonBody['results'] != null){
        Te
      }
    }
    return null;
  }
}
