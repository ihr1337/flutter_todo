class ToDo {
  int? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: 1, todoText: 'Morning excercise', isDone: true),
      ToDo(id: 2, todoText: 'Breakfast', isDone: true),
      ToDo(id: 3, todoText: 'Cleaning room', isDone: false),
      ToDo(id: 4, todoText: 'Wash dishes', isDone: false),
    ];
  }
}
