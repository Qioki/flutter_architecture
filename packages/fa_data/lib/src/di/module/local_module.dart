import 'dart:async';
import 'package:fa_data/src/local/datasource/todo_fake_datasource.dart';
import 'package:fa_data/src/local/mapper/todo_mapper.dart';
import 'package:fa_domain/fa_domain.dart';

mixin LocalModule {
  static Future<void> configureInjection() async {
    locator.registerSingleton<TodoDataSource>(TodoFakeDataSource(TodoMapper()));
  }
}
