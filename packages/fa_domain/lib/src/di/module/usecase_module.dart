import 'dart:async';

import 'package:fa_domain/src/di/locator.dart';
import 'package:fa_domain/src/interfaces/repository/todo_repository.dart';
import 'package:fa_domain/src/usecase/get_todos_usecase.dart';
import 'package:fa_domain/src/usecase/insert_todo_usecase.dart';

mixin UseCaseModule {
  static Future<void> configureInjection() async {
    locator.registerLazySingleton<InsertTodoUseCase>(
      () => InsertTodoUseCase(locator<TodoRepository>()),
    );
    locator.registerLazySingleton<GetTodosUseCase>(
      () => GetTodosUseCase(locator<TodoRepository>()),
    );
  }
}
