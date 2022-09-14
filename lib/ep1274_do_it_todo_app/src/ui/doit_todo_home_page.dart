import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1274_do_it_todo_app/src/data/todo_data.dart';

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
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            child: Text(
              "😎 Personal",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: taskGroupItems.length,
            itemBuilder: (context, index) {
              var taskGroupItem = taskGroupItems[index];
              return Container();
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
