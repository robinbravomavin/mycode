class ToDo {
String? id;
String? todoText;
late bool isDone;

ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List <ToDo> todoList() {
  return [
    ToDo(id: '01', todoText: 'Morning Excercise', isDone: true),
    ToDo(id: '02', todoText: 'Check E-Mails', isDone: true),
    ToDo(id: '03', todoText: 'Buy Groceries', ),
    ToDo(id: '04', todoText: 'Team Meeting', ),
    ToDo(id: '05', todoText: 'Yoga', ),
  ];
}
}