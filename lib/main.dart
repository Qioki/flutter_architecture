import 'package:fa_presentation/fa_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/di/locator.dart';

/*

+Создайте пустой проект, используя принципы Clean Architecture.
+Создайте фейковый сервис на сервисном слое, зарегистрируйте его в сервис-локаторе (например, GetIt, но необязательно) и получите его на бизнес-слое через локатор.
+Подключите Freezed и создайте доменную модель с помощью этой библиотеки.
TODO По желанию, усложнённое. Реализуйте собственный генератор кода (с использованием build runner или без, неважно).
+Настройте статический анализатор, подключите dart_code_metrics, проведите анализ и соберите метрики с собственного кода.
*/

void main() {
  ServiceLocator.configureDependencies();
  runApp(const App());
}
