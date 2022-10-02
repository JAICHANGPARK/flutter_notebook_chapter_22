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
                      CircleAvatar(
                        child: Icon(
                          Icons.arrow_back,
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.2),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.share,
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.2),
                      ),
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
          height: 84,
          color: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: Card(),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
