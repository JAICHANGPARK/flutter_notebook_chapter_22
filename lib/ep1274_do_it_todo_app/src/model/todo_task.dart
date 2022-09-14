
class TodoTask{
  bool? isDone;
  String? task;
  String? dateString;

  TodoTask({this.isDone, this.task, this.dateString});
}

class SubTask{
  String? subTask;
  bool? isDone;

  SubTask({this.subTask, this.isDone});
}