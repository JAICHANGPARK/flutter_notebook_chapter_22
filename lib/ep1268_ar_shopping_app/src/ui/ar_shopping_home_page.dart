import 'package:flutter/material.dart';

class ArShoppingHomePage extends StatefulWidget {
  const ArShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<ArShoppingHomePage> createState() => _ArShoppingHomePageState();
}

class _ArShoppingHomePageState extends State<ArShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [],
                  ),
                ),
                child: Row(
                  children: [],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
