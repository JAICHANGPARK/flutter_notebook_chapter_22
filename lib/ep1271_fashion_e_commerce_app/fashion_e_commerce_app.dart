import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1271_fashion_e_commerce_app/src/ui/fashion_home_page.dart';

class FashionECommerceApp extends StatelessWidget {
  const FashionECommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FashionHomePage(),
    );
  }
}
