import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1290_renting_app/src/home/renting_home_page.dart';
import 'package:go_router/go_router.dart';

class RentingApp extends StatelessWidget {
  RentingApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const RentingHomePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
