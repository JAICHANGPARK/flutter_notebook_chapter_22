import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1297_lolo_app/src/ui/lolo_plan_page.dart';
import 'package:go_router/go_router.dart';

class LoloApp extends StatelessWidget {
  LoloApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const LoloPlanPage(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
