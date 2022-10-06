import 'package:flutter/material.dart';

class LoloPlanPage extends StatefulWidget {
  const LoloPlanPage({Key? key}) : super(key: key);

  @override
  State<LoloPlanPage> createState() => _LoloPlanPageState();
}

class _LoloPlanPageState extends State<LoloPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){}, icon: Icon(Icons.cancel_outlined),

        ),
        centerTitle: true,
        title: Text("Pick Your Plan"),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
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
