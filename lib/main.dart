import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1261_team_management_app/team_management_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(ProviderScope(child: const TeamManagementApp()));
}
