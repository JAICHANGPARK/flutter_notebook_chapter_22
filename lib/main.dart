import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1271_fashion_e_commerce_app/fashion_e_commerce_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: FashionECommerceApp(),
    ),
  );
}
