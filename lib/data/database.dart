import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      // ["Make Tutorial", false],
      // ["Do Exercise", false],
    ];
  }

  // For reading data from database, we use .get
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // For writing in the database we use .put
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
