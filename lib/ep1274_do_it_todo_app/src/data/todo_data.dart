import 'package:flutter_notebook_chapter_22/ep1274_do_it_todo_app/src/model/todo_task.dart';

List<TaskGroup> taskGroupItems = [
  TaskGroup(groupTitle: "Skincare", todoTask: [
    TodoTask(
      subTasks: [
        SubTask(
          subTask: "Eye Cream",
          isDone: false,
        ),
        SubTask(
          subTask: "Moisturizer",
          isDone: false,
        ),
        SubTask(
          subTask: "Sunscreen",
          isDone: true,
        ),
        SubTask(
          subTask: "Facial Cleanser",
          isDone: true,
        )
      ],
      task: "Daily Routine",
      dateString: "Today",
      isDone: false,
    ),
    TodoTask(
      subTasks: [],
      task: "Deep Exfoliation",
      dateString: "Tomorrow",
      isDone: false,
    ),
    TodoTask(
      subTasks: [],
      task: "Brightening Mask",
      dateString: "",
      isDone: true,
    ),
    TodoTask(
      subTasks: [],
      task: "Scrubbing",
      dateString: "",
      isDone: true,
    ),
  ]),
  TaskGroup(groupTitle: "Housework", todoTask: [
    TodoTask(
      subTasks: [],
      task: "Daily Routine",
      dateString: "Today",
      isDone: false,
    ),
    TodoTask(
      subTasks: [],
      task: "Deep Exfoliation",
      dateString: "Tomorrow",
      isDone: false,
    ),
    TodoTask(
      subTasks: [],
      task: "Brightening Mask",
      dateString: "",
      isDone: true,
    ),
    TodoTask(
      subTasks: [],
      task: "Scrubbing",
      dateString: "",
      isDone: true,
    ),
  ])
];
