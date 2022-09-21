import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1280_wtc_app/woman_in_tech_communitiy_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: WomenInTechCommunityApp(),
    ),
  );
}
