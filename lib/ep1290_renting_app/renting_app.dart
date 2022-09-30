import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RentingApp extends StatelessWidget {
   RentingApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: []);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
