import 'dart:async';
import 'package:fa_data/src/local/datasource/todo_fake_datasource.dart';
import 'package:fa_data/src/repository/todo_repository_impl.dart';
import 'package:fa_domain/fa_domain.dart';

mixin RepositoryModule {
  static Future<void> configureInjection() async {
    locator.registerSingleton<TodoRepository>(
        TodoRepositoryImpl(todoDataSource: locator.get<TodoDataSource>()));
  }
}
