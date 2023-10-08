import 'package:fa_domain/src/di/module/usecase_module.dart';

mixin DomainLayerInjection {
  static Future<void> configure() async {
    await UseCaseModule.configureInjection();
  }
}
