import 'package:flutter/material.dart';

class LoloPlanPage extends StatefulWidget {
  const LoloPlanPage({Key? key}) : super(key: key);

  @override
  State<LoloPlanPage> createState() => _LoloPlanPageState();
}

class _LoloPlanPageState extends State<LoloPlanPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cancel_outlined),
        ),
        centerTitle: true,
        title: const Text("Pick Your Plan"),
        // titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: pageIndex == 0 ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: pageIndex == 0 ? Colors.black : Colors.grey,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Center(
                        child: Text(
                          "Monthly",
                          style: TextStyle(
                            color: pageIndex == 0 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: pageIndex == 1 ? Colors.black : Colors.white,
                        border: Border.all(
                          color: pageIndex == 1 ? Colors.black : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Center(
                        child: Text(
                          "Premium",
                          style: TextStyle(
                            color: pageIndex == 1 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              Text(
                "Get Lolo Plus",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  foreground: Paint()
                    ..shader = LinearGradient(colors: const [Colors.black, Colors.black, Colors.purpleAccent]).createShader(
                      Rect.fromLTWH(0, 0, 220, 70),
                    ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Swipe right on as many peaple you like",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: IndexedStack(
                  index: pageIndex,
                  children: [
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        if (index % 3 == 1) {
                          return Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                            height: 210,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 16,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.purple, width: 2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 24,
                                      left: 16,
                                      right: 16,
                                      bottom: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Upgrade your likes",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Text(
                                          "\$9,99",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                          style: TextStyle(color: Colors.grey, fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: const [
                                            Text(
                                              "See benefits",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 16,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: const Text(
                                      "Recommended",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                        return Container(
                          margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          height: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 16,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Upgrade your likes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text(
                                        "\$9,99",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: const [
                                          Text(
                                            "See benefits",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 8,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Sign Up For Pro",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
