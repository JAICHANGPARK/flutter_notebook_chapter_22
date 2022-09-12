import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1271_fashion_e_commerce_app/src/ui/women_dress_page.dart';

class FashionHomePage extends StatefulWidget {
  const FashionHomePage({Key? key}) : super(key: key);

  @override
  State<FashionHomePage> createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.apps),
        title: const Text("Collections"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const WomenDressPage(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 120,
                  color: Colors.red[50],
                  child: Stack(
                    children: const [
                      Positioned(
                        right: 32,
                        top: 16,
                        bottom: 16,
                        child: Center(
                          child: Text(
                            "WOMEN",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 120,
                color: Colors.green[50],
                child: Stack(
                  children: const [
                    Positioned(
                      left: 32,
                      top: 16,
                      bottom: 16,
                      child: Center(
                        child: Text(
                          "MEN",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 320,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.orange[50],
                        child: Stack(
                          children: const [
                            Positioned(
                              left: 16,
                              top: 48,
                              right: 16,
                              child: Center(
                                child: Text(
                                  "KIDS",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.indigo[50],
                            child: Stack(
                              children: const [
                                Positioned(
                                    left: 16,
                                    top: 0,
                                    // right: 0,
                                    bottom: 0,
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Center(
                                        child: Text(
                                          "SPORTS",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green[50],
                            child: Stack(
                              children: const [
                                Positioned(
                                    left: 16,
                                    top: 0,
                                    // right: 0,
                                    bottom: 0,
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Center(
                                        child: Text(
                                          "DAILY\nDEALS",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 120,
                color: Colors.red[100],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
