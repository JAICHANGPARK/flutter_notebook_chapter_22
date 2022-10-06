import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1297_lolo_app/lolo_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: LoloApp(),
    ),
  );
}
