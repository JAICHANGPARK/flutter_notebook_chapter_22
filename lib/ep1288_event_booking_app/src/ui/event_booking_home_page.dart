import 'package:flutter/material.dart';

class EventBookingHomePage extends StatefulWidget {
  const EventBookingHomePage({Key? key}) : super(key: key);

  @override
  State<EventBookingHomePage> createState() => _EventBookingHomePageState();
}

class _EventBookingHomePageState extends State<EventBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, Dreamwalker",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.cyan,
                            size: 14,
                          ),
                          Text("New York")
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_none),
                            color: Colors.cyan,
                          ),
                        ),
                        const Positioned(
                            right: 0,
                            top: 8,
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find Amazing Events Near You",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.orange,
                        size: 14,
                      ),
                      Text(
                        "258 Events Around You",
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              // height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search Events",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Category",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("See all"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        height: 54,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                  right: 16,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.indigo[50],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Row(
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text("💿"),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Music',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Nearest Event",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("See all"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 200,
                                margin: const EdgeInsets.only(
                                  right: 16,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.blue,
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2022/08/09/13/38/fish-7375042_960_720.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(16),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: const [
                                                  Icon(
                                                    Icons.calendar_today,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "10:00~12:00",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(child: Container()),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              "Rock Music Concert",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$120",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.cyan,
                                              size: 12,
                                            ),
                                            Text("Flutter, Island")
                                          ],
                                        )
                                      ],
                                    ),
                                    const Divider(),
                                    SizedBox(
                                      height: 32,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Stack(
                                              children: List.generate(
                                                4,
                                                (index) => Positioned(
                                                  left: index * 12,
                                                  child: CircleAvatar(
                                                    radius: 16,
                                                    backgroundColor: Colors.indigo.withOpacity(0.2 * index),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                            flex: 4,
                                            child: Text(
                                              "200/134 joined",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Trending Event",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("See all"),
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(
                        4,
                        (index) => Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,

                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16)
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Pool Party"),
                                        Text(
                                          "\$140",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.cyan,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Flutter, Island",
                                          style: TextStyle(
                                            color: Colors.cyan,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.calendar_today,
                                          color: Colors.grey,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "17 Oct. 2022 - 07:30 PM",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    )
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
