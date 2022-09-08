import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1268_ar_shopping_app/ar_shopping_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: ArShoppingApp(),
    ),
  );
}
