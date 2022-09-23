import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1280_wtc_app/src/ui/wtc_user_list_component.dart';

class WTCHomePage extends StatefulWidget {
  const WTCHomePage({Key? key}) : super(key: key);

  @override
  State<WTCHomePage> createState() => _WTCHomePageState();
}

class _WTCHomePageState extends State<WTCHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          const WtcUserListComponent(),
        ],
      ),
    );
  }
}
