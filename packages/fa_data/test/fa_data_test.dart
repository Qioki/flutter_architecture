import 'package:fa_data/fa_data.dart';
import 'package:fa_domain/fa_domain.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TodoRepository Tests', () {
    late TodoRepository repository;

    setUpAll(() async {
      await DataLayerInjection.configure();
      repository = locator<TodoRepository>();
    });

    test('Inserting', () async {
      var checkId = 1;
      final todo = Todo(id: checkId, title: 'Test Todo', description: 'test');
      final result = await repository.insert(todo);

      expect(result, checkId);
    });

    test('Getting', () async {
      final todo1 = Todo(id: 1, title: 'Todo 1', description: 'test 1');
      final todo2 = Todo(id: 2, title: 'Todo 2', description: 'test 2');
      await repository.insert(todo1);
      await repository.insert(todo2);

      final todos = await repository.getTodos();

      expect(todos.length, 2);
      expect(todos[0].title, 'Todo 1');
      expect(todos[1].description, 'test 2');
    });
  });
}
