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
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
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
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Text(
                          "${taskGroupItem.groupTitle}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(" ${taskGroupItem.todoTask?.length ?? 0}"),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(
                    indent: 16,
                    color: Colors.grey,
                  ),
                  // ListView.builder(
                  //   itemCount: taskGroupItem.todoTask?.length ?? 0,
                  //   itemBuilder: (context, index2) {
                  //
                  //   },
                  // )
                  Column(
                    children: taskGroupItem.todoTask
                            ?.map(
                              (e) => CheckboxListTile(
                                controlAffinity: ListTileControlAffinity.leading,
                                value: (e.isDone ?? false),
                                title: Text(e.task ?? "-"),
                                onChanged: (b) {},
                              ),
                            )
                            .toList() ??
                        [],
                  )
                ],
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
