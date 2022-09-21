import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1280_wtc_app/src/ui/wtc_profile_page.dart';

class WomenInTechCommunityApp extends StatelessWidget {
  const WomenInTechCommunityApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WTCProfilePage(),
    );
  }
}
