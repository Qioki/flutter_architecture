import 'package:fa_data/fa_data.dart';
import 'package:fa_domain/fa_domain.dart';
import 'package:fa_presentation/fa_presentation.dart';

class ServiceLocator {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configure();
    await DomainLayerInjection.configure();
    await PresentationLayerInjection.configure();
  }
}
