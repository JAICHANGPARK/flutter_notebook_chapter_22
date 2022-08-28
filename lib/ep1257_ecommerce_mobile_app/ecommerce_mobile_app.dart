import 'package:flutter/material.dart';

import 'src/ui/ecommerce_home_page.dart';


class EcommerceMobileApp extends StatelessWidget {
  const EcommerceMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EcommerceHomePage(),
    );
  }
}
