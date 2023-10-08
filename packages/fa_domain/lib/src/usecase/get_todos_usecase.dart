import 'package:fa_domain/src/entity/todo.dart';
import 'package:fa_domain/src/interfaces/repository/todo_repository.dart';
import 'package:fa_domain/src/usecase/use_case.dart';

class GetTodosUseCase extends UseCase<List<Todo>, void> {
  final TodoRepository _todoRepository;

  GetTodosUseCase(this._todoRepository);

  @override
  Future<List<Todo>> call(params) {
    return _todoRepository.getTodos();
  }
}
