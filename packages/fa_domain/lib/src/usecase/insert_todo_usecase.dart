import 'package:fa_domain/src/entity/todo.dart';
import 'package:fa_domain/src/interfaces/repository/todo_repository.dart';
import 'package:fa_domain/src/usecase/use_case.dart';

class InsertTodoUseCase extends UseCase<int, Todo> {
  final TodoRepository _todoRepository;

  InsertTodoUseCase(this._todoRepository);

  @override
  Future<int> call(Todo params) {
    return _todoRepository.insert(params);
  }
}
