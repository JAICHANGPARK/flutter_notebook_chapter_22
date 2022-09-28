import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1288_event_booking_app/src/ui/event_booking_home_page.dart';
import 'package:go_router/go_router.dart';

class EventBookingApp extends StatelessWidget {
  EventBookingApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const EventBookingHomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light(
      ).copyWith(
        scaffoldBackgroundColor: Colors.orange[100]
      ),

    );
  }
}
