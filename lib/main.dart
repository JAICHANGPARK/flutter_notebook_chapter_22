import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1288_event_booking_app/event_booking_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: EventBookingApp(),
    ),
  );
}
