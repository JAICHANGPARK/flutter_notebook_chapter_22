import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1265_sub_basesd_social_app/sub_based_social_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: SubBasedSocialApp(),
    ),
  );
}
