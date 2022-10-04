import 'package:d3f_login/generated/locales.g.dart' as login;
import 'package:d3f_modular/generated/locales.g.dart';


abstract class AppGlobalTranslation {
  static Map<String, Map<String, String>> translationsKeys = {};

  static Map<String, Map<String, String>> mergeTranslationKeys() {
    translationsKeys.addAll(AppTranslation.translations);
    translationsKeys.addAll(login.AppTranslation.translations);
    return translationsKeys;
  }
}
