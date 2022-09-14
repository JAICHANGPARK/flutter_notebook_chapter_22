class TaskGroup {
  String? groupTitle;
  List<TodoTask>? todoTask;

  TaskGroup({this.groupTitle, this.todoTask});
}

class TodoTask {
  bool? isDone;
  String? task;
  String? dateString;
  List<SubTask> subTasks;

  TodoTask({
    this.isDone,
    this.task,
    this.dateString,
    required this.subTasks,
  });
}

class SubTask {
  String? subTask;
  bool? isDone;

  SubTask({this.subTask, this.isDone});
}
