import 'package:flutter/material.dart';

class WomenDressPage extends StatefulWidget {
  const WomenDressPage({Key? key}) : super(key: key);

  @override
  State<WomenDressPage> createState() => _WomenDressPageState();
}

class _WomenDressPageState extends State<WomenDressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Women's Dress"),
      ),
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 68,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4)
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_list,
                ),
              )
            ],
          ),
        ),
      ),


    );
  }
}
