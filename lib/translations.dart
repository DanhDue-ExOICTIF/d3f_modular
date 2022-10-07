import 'package:d3f_inapp_purchase/generated/locales.g.dart' as inappPurchase;
import 'package:d3f_login/generated/locales.g.dart' as login;
import 'package:d3f_modular/generated/locales.g.dart';
import 'package:d3f_shared/generated/locales.g.dart' as shared;

abstract class AppGlobalTranslation {
  static Map<String, Map<String, String>> translationsKeys = {};

  static Map<String, Map<String, String>> mergedTranslationKeys() {
    translationsKeys.addAll(AppTranslation.translations);
    translationsKeys.addAll(shared.AppTranslation.translations);
    translationsKeys.addAll(login.AppTranslation.translations);
    translationsKeys.addAll(inappPurchase.AppTranslation.translations);
    return translationsKeys;
  }
}
