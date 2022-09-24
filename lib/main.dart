import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1284_travel_ui_kit_app/travel_ui_kit_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: TravelUiKitApp(),
    ),
  );
}
