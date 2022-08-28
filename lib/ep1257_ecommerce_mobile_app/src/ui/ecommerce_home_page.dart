import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                color: Colors.blueAccent,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        left: 0,
                        top: 12,
                        child: Container(
                          color: Colors.white,
                          child: Row(

                    ),))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
