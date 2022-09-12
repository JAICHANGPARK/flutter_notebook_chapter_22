import 'package:flutter/material.dart';

class WomenDressPage extends StatefulWidget {
  const WomenDressPage({Key? key}) : super(key: key);

  @override
  State<WomenDressPage> createState() => _WomenDressPageState();
}

class _WomenDressPageState extends State<WomenDressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),

      persistentFooterButtons: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_list,
          ),
        )
      ],
    );
  }
}
