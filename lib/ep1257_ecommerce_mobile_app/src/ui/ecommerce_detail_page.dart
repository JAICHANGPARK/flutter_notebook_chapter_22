import 'package:flutter/material.dart';

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({Key? key}) : super(key: key);

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Derails"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 52,
                    child: ListView(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            border: Border.all(color: Colors.blue),
                            shape: BoxShape.circle,
                          ),
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(8),
                          child: Image.network(
                            "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                            color: Colors.blue.withOpacity(0.2),
                            colorBlendMode: BlendMode.srcATop,
                          ),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            border: Border.all(color: Colors.red),
                            shape: BoxShape.circle,
                          ),
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(8),
                          child: Image.network(
                            "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                            color: Colors.red.withOpacity(0.2),
                            colorBlendMode: BlendMode.srcATop,
                          ),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Colors.purple[50],
                              border: Border.all(color: Colors.purple),
                              shape: BoxShape.circle),
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(8),
                          child: Image.network(
                            "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                            color: Colors.purple.withOpacity(0.2),
                            colorBlendMode: BlendMode.srcATop,
                          ),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            border: Border.all(color: Colors.green),
                            shape: BoxShape.circle,
                          ),
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(8),
                          child: Image.network(
                            "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                            color: Colors.green.withOpacity(0.2),
                            colorBlendMode: BlendMode.srcATop,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.network(
                      // "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-skyblue-witb?wid=231&hei=340&fmt=jpeg&qlt=95&.v=1603906261000"
                      "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 13,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Beats Studio Wireless\nHadphones",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 16,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "(124)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const Text(
                        "\$6.99",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "\$4.15",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        child: const Icon(Icons.remove),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("1"),
                      ),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.blue[200],
                        foregroundColor: Colors.black,
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Special request",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Special request are welcome, but can't always be accommodated.")
                      ],
                    ),
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Brand:",
                        ),
                        TextSpan(
                          text: "Apple",
                        ),
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Model Name:",
                        ),
                        TextSpan(
                          text: "Airpods Max",
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "ADD TO CART",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
