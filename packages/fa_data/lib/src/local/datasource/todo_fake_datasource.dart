import 'package:fa_data/src/entity/todo_db.dart';
import 'package:fa_data/src/local/mapper/todo_mapper.dart';
import 'package:fa_domain/fa_domain.dart';

abstract class TodoDataSource {
  Future<int> insert(Todo item);
  List<Todo> getTodos();
}

class TodoFakeDataSource implements TodoDataSource {
  final _todos = <String, TodoDb>{};
  final TodoMapper _mapper;

  TodoFakeDataSource(this._mapper);

  @override
  Future<int> insert(Todo item) async {
    print(item.toString());
    _todos[item.id.toString()] = _mapper.toTodoDb(item);
    return item.id;
  }

  @override
  List<Todo> getTodos() {
    final todoList = _todos.values.map((e) => _mapper.toTodo(e)).toList();
    return todoList;
  }
}
