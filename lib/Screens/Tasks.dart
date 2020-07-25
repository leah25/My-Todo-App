class Tasks {
  final String name;
  bool isDone;

  Tasks({this.name, this.isDone = false});

  void checkIfDone() {
    isDone = !isDone;
  }
}
