import 'package:fa_domain/src/entity/todo.dart';

abstract class TodoRepository {
  Stream<List<Todo>> get todosStream;
  Future<List<Todo>> getTodos();
  Future<int> insert(Todo todo);
}
