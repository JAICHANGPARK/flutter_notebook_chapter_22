import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1284_travel_ui_kit_app/src/ui/travel_detail_page.dart';
import 'package:flutter_notebook_chapter_22/ep1284_travel_ui_kit_app/src/ui/travel_ui_home_page.dart';
import 'package:go_router/go_router.dart';

class TravelUiKitApp extends StatelessWidget {
  TravelUiKitApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const TravelUIHomePage(),
      ),
      GoRoute(
          path: "/detail",
          builder: (context, state) {
            return const TravelUiDetailPage();
          })
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
