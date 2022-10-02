import 'package:flutter/material.dart';

class RentingDetailPage extends StatefulWidget {
  const RentingDetailPage({Key? key}) : super(key: key);

  @override
  State<RentingDetailPage> createState() => _RentingDetailPageState();
}

class _RentingDetailPageState extends State<RentingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 380,
            color: Colors.pink,
            child: Stack(
              children: [
                Positioned(
                  child: PageView(),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 38,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 32,
            color: Colors.orange,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Placeholder(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
