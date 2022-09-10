import 'package:flutter/material.dart';

class ArShoppingWishlistPage extends StatefulWidget {
  const ArShoppingWishlistPage({Key? key}) : super(key: key);

  @override
  State<ArShoppingWishlistPage> createState() => _ArShoppingWishlistPageState();
}

class _ArShoppingWishlistPageState extends State<ArShoppingWishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WISHLIST",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                  size: 24,
                ),
              )
            ],
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  TabBar(
                    indicatorColor: Colors.deepPurpleAccent,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "LIKED PRODUCTS",
                      ),
                      Tab(
                        text: "DEALS",
                      ),
                      Tab(
                        text: "COLLECTIONS",
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(color: Colors.red,),
                        Container(color: Colors.pink,),
                        Container(color: Colors.green,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
