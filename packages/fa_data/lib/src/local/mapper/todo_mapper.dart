import 'package:fa_data/src/entity/todo_db.dart';
import 'package:fa_domain/fa_domain.dart';

class TodoMapper {
  Todo toTodo(TodoDb todoDb) {
    try {
      return Todo(
        id: todoDb.id,
        title: todoDb.title,
        description: todoDb.description,
      );
    } catch (e) {
      rethrow;
    }
  }

  TodoDb toTodoDb(Todo todo) {
    try {
      return TodoDb(
        id: todo.id,
        title: todo.title,
        description: todo.description,
      );
    } catch (e) {
      rethrow;
    }
  }
}
