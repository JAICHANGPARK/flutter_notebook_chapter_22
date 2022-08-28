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
                      right: 0,
                      bottom: 0,
                      left: 0,
                      top: 16,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.home,
                                  color: Colors.indigo,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.sell,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Delas",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.person,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Account",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ),
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
