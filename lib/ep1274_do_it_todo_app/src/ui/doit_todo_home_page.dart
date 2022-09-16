import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1274_do_it_todo_app/src/data/todo_data.dart';
import 'package:flutter_notebook_chapter_22/ep1274_do_it_todo_app/src/model/todo_task.dart';

class DoitTodoHomePage extends StatefulWidget {
  const DoitTodoHomePage({Key? key}) : super(key: key);

  @override
  State<DoitTodoHomePage> createState() => _DoitTodoHomePageState();
}

class _DoitTodoHomePageState extends State<DoitTodoHomePage> {
  List<TaskGroup> taskGroupItemsState = taskGroupItems;

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
            itemCount: taskGroupItemsState.length,
            itemBuilder: (context, index) {
              var taskGroupItem = taskGroupItemsState[index];
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
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: taskGroupItem.todoTask?.length ?? 0,
                    itemBuilder: (context, index2) {
                      var e = taskGroupItem.todoTask![index2];
                      return CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: (e.isDone ?? false),
                        title: Row(
                          children: [
                            Text(e.task ?? "-"),
                            const SizedBox(
                              width: 8,
                            ),
                            if (e.dateString?.isNotEmpty ?? false)
                              Container(
                                decoration: BoxDecoration(
                                  color: e.dateString == "Today" ? Colors.green[50] : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 4,
                                ),
                                child: Text(
                                  "${e.dateString}",
                                  style: TextStyle(
                                    color: e.dateString == "Today" ? Colors.green : Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            const Spacer(),
                            if (e.subTasks.isNotEmpty)
                              const Icon(
                                Icons.account_tree,
                              ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Icon(Icons.refresh),
                          ],
                        ),

                        onChanged: (b) {
                          print("$index | ${index2} : $b");
                          if (e.subTasks.isNotEmpty) {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              // backgroundColor: Colors.transparent,

                              builder: (context) => Container(
                                height: 600,
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.only(top: 12, right: 8, left: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 48,
                                      color: Colors.grey,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_horiz,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Checkbox(value: false, onChanged: (b) {}),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                e.task ?? "",
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              const Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: [
                                                  if (e.dateString?.isNotEmpty ?? false)
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: e.dateString == "Today"
                                                            ? Colors.green[50]
                                                            : Colors.grey[200],
                                                        borderRadius: BorderRadius.circular(4),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 4,
                                                        vertical: 4,
                                                      ),
                                                      child: Text(
                                                        "${e.dateString}",
                                                        style: TextStyle(
                                                          color: e.dateString == "Today" ? Colors.green : Colors.grey,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  const Spacer(),
                                                  const Icon(
                                                    Icons.rebase_edit,
                                                    size: 18,
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                    child: Text("2/4"),
                                                  ),
                                                  const Icon(
                                                    Icons.refresh,
                                                    size: 18,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const Expanded(child: Placeholder()),
                                    const Divider(),
                                    Row(
                                      children: [
                                        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                                        const Text("Add Sub-task"),
                                        const Spacer(),
                                        IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month_outlined)),
                                        IconButton(onPressed: () {}, icon: const Icon(Icons.tag_outlined)),
                                        IconButton(onPressed: () {}, icon: const Icon(Icons.flag)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          } else {
                            var oldTaskItems = taskGroupItem.todoTask;
                            oldTaskItems![index2] = TodoTask(
                              subTasks: e.subTasks,
                              isDone: b,
                              task: e.task,
                              dateString: e.dateString,
                            );
                            setState(
                              () {
                                taskGroupItemsState[index].todoTask = oldTaskItems;
                              },
                            );
                          }

                          //we  need to get index
                        },
                        tileColor: (e.isDone ?? false) ? Colors.grey[100] : Colors.white,
                        // selectedTileColor: Colors.red,
                      );
                    },
                  ),

                  // Column(
                  //   children: taskGroupItem.todoTask
                  //           ?.map(
                  //             (e) => CheckboxListTile(
                  //               controlAffinity: ListTileControlAffinity.leading,
                  //               value: (e.isDone ?? false),
                  //               title: Row(
                  //                 children: [
                  //                   Text(e.task ?? "-"),
                  //                   const SizedBox(
                  //                     width: 8,
                  //                   ),
                  //                   if (e.dateString?.isNotEmpty ?? false)
                  //                     Container(
                  //                       decoration: BoxDecoration(
                  //                         color: e.dateString == "Today" ? Colors.green[50] : Colors.grey[200],
                  //                         borderRadius: BorderRadius.circular(4),
                  //                       ),
                  //                       padding: const EdgeInsets.symmetric(
                  //                         horizontal: 4,
                  //                         vertical: 4,
                  //                       ),
                  //                       child: Text(
                  //                         "${e.dateString}",
                  //                         style: TextStyle(
                  //                           color: e.dateString == "Today" ? Colors.green : Colors.grey,
                  //                           fontSize: 12,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   const Spacer(),
                  //                   if (e.subTasks.isNotEmpty)
                  //                     const Icon(
                  //                       Icons.account_tree,
                  //                     ),
                  //                   const SizedBox(
                  //                     width: 4,
                  //                   ),
                  //                   const Icon(Icons.refresh),
                  //                 ],
                  //               ),
                  //               onChanged: (b) {
                  //                 print(b);
                  //                 //we  need to get index
                  //
                  //               },
                  //               tileColor: (e.isDone ?? false) ? Colors.grey[100] : Colors.white,
                  //               // selectedTileColor: Colors.red,
                  //             ),
                  //           )
                  //           .toList() ??
                  //       [],
                  // )
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
