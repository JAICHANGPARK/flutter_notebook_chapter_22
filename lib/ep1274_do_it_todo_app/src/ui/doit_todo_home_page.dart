import 'package:flutter/material.dart';

class DoitTodoHomePage extends StatefulWidget {
  const DoitTodoHomePage({Key? key}) : super(key: key);

  @override
  State<DoitTodoHomePage> createState() => _DoitTodoHomePageState();
}

class _DoitTodoHomePageState extends State<DoitTodoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.grey,
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
