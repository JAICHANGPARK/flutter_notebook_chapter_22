import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1290_renting_app/renting_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: RentingApp(),
    ),
  );
}
