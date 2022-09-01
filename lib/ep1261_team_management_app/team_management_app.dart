import 'package:flutter/material.dart';

import 'src/ui/team_management_home_page.dart';


class TeamManagementApp extends StatelessWidget {
  const TeamManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TeamManagementHomePage(),
    );
  }
}
