import 'package:flutter/material.dart';

class WtcUserListComponent extends StatelessWidget {
  const WtcUserListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(left: 16),
      // color: Colors.pink,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Dream Walker",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey,
                ),
                onPressed: () {},
                child: const Text(
                  "See more",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.grey,
                size: 16,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 24,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
