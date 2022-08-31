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
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
