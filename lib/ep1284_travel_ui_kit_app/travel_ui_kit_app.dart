import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1284_travel_ui_kit_app/src/ui/travel_ui_home_page.dart';


class TravelUiKitApp extends StatelessWidget {
  const TravelUiKitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TravelUIHomePage(),
    );
  }
}
