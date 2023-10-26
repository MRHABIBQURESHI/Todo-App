class ToDo {
  String? id;
  String? Name;
  bool isDone;

  ToDo({
    required this.id,
    required this.Name,
    this.isDone = false,
  });

  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', Name: "Breakfast", isDone: true),
      ToDo(id: '02', Name: "Lunch", isDone: true),
      ToDo(id: '03', Name: "Snacks"),
      ToDo(id: '04', Name: "Chips", isDone: true),
      ToDo(id: '05', Name: "Juice"),
      ToDo(id: '06', Name: "Cold Drink"),
      ToDo(id: '07', Name: "Dinner"),
      ToDo(id: '08', Name: "Breakfast", isDone: true),
      ToDo(id: '09', Name: "Lunch", isDone: true),
      ToDo(id: '10', Name: "Snacks"),
      ToDo(id: '11', Name: "Chips", isDone: true),
      ToDo(id: '12', Name: "Juice"),
      ToDo(id: '13', Name: "Cold Drink"),
      ToDo(id: '14', Name: "Dinner"),
    ];
  }
}
