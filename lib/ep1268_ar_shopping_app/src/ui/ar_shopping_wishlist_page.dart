import 'package:flutter/material.dart';

class ArShoppingWishlistPage extends StatefulWidget {
  const ArShoppingWishlistPage({Key? key}) : super(key: key);

  @override
  State<ArShoppingWishlistPage> createState() => _ArShoppingWishlistPageState();
}

class _ArShoppingWishlistPageState extends State<ArShoppingWishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("WISHLIST"),
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.black,
              child: Icon(
                Icons.add,
                size: 24,
              ),
            )
          ],
        )
      ],
    );
  }
}
