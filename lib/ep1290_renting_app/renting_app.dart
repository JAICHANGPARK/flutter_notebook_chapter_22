import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1290_renting_app/src/booking/renting_booking_page.dart';
import 'package:flutter_notebook_chapter_22/ep1290_renting_app/src/home/renting_home_page.dart';
import 'package:go_router/go_router.dart';

import 'src/detail/renting_detail_page.dart';

class RentingApp extends StatelessWidget {
  RentingApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => const RentingHomePage(), routes: [
        GoRoute(
          path: "detail",
          builder: (context, state) {
            return const RentingDetailPage();
          },
        ),
        GoRoute(
          path: "book",
          builder: (context, state) => RentingBookingPage(),
        )
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
