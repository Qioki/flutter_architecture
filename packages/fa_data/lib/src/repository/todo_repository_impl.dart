import 'dart:async';

import 'package:fa_data/src/local/datasource/todo_fake_datasource.dart';
import 'package:fa_domain/fa_domain.dart';

class TodoRepositoryImpl extends TodoRepository {
  TodoDataSource todoDataSource;

  var _todos = <Todo>[];

  TodoRepositoryImpl({
    required this.todoDataSource,
  });

  @override
  Stream<List<Todo>> get todosStream => _todosController.stream;
  final _todosController = StreamController<List<Todo>>.broadcast();

  @override
  Future<int> insert(Todo todo) {
    var id = todoDataSource.insert(todo);
    getTodos();
    return id;
  }

  @override
  Future<List<Todo>> getTodos() async {
    _todos = todoDataSource.getTodos();
    _todosController.sink.add(_todos);
    return _todos;
  }
}
