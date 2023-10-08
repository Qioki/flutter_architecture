import 'dart:async';

import 'package:fa_domain/fa_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<List<Todo>> {
  TodoRepository todoRepository;
  UseCase<int, Todo> insertTodoUseCase;
  UseCase<List<Todo>, void> getTodosUseCase;
  late StreamSubscription<List<Todo>> todoStreamSubscription;
  int testCount = 0;

  HomePageCubit({
    required this.todoRepository,
    required this.insertTodoUseCase,
    required this.getTodosUseCase,
  }) : super([]) {
    todoStreamSubscription = todoRepository.todosStream.listen((todos) {
      emit(todos);
    });
  }

  void insertTodo({required String title, required String description}) {
    insertTodoUseCase.call(Todo.fromJson(
        {'id': testCount++, 'title': title, 'description': description}));
  }

  Future<List<Todo>> getTodos() async {
    return await getTodosUseCase.call(null);
  }

  @override
  Future<void> close() {
    todoStreamSubscription.cancel();
    return super.close();
  }
}
