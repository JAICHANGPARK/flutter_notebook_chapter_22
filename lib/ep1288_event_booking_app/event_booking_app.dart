import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventBookingApp extends StatelessWidget {
  EventBookingApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
      GoRoute(path: "/",
      builder: (context, state) =>);

  ]

  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
