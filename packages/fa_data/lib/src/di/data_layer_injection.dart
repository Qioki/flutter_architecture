import 'package:fa_data/src/di/module/local_module.dart';
import 'package:fa_data/src/di/module/repository_module.dart';

mixin DataLayerInjection {
  static Future<void> configure() async {
    await LocalModule.configureInjection();
    await RepositoryModule.configureInjection();
  }
}
