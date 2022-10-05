import 'package:flutter/material.dart';

class RentingBookingPage extends StatefulWidget {
  const RentingBookingPage({Key? key}) : super(key: key);

  @override
  State<RentingBookingPage> createState() => _RentingBookingPageState();
}

class _RentingBookingPageState extends State<RentingBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Flutter House",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Nov, 13-16 - 3 guests",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Dates"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Clear"),
                        ),
                      ],
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            color: Colors.blue,
                            child: Card(
                              // child: DateTimeRange(start: DateTime.now(), end: DateTime.now(),),
                              child: DateRangePickerDialog(
                                firstDate: DateTime.now().add(Duration(days: -100)),
                                lastDate: DateTime.now(),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Guest",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Clear"),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            child: Card(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text("Adults"),
                                      Text("ofter 12")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    Container(
                      height: 62,
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Preliminary Cost"),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$350",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                child: Text(
                                  "BOOK NOW",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
