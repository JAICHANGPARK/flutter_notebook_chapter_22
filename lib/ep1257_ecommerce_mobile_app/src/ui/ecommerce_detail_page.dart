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
        title: Text("Derails"),
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
                          margin: EdgeInsets.only(bottom: 16),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            border: Border.all(color: Colors.red),
                            shape: BoxShape.circle,
                          ),
                          margin: EdgeInsets.only(bottom: 16),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Colors.purple[50],
                              border: Border.all(color: Colors.purple),
                              shape: BoxShape.circle),
                          margin: EdgeInsets.only(bottom: 16),
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            border: Border.all(color: Colors.green),
                            shape: BoxShape.circle,
                          ),
                          margin: EdgeInsets.only(bottom: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.network(
                        "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png"),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 13,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
