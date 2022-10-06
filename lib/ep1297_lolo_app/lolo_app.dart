import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoloApp extends StatelessWidget {
  LoloApp({Key? key}) : super(key: key);

  final _router = GoRouter(initialLocation: "/", routes: [GoRoute(path: "/")]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
