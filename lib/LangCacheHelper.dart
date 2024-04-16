import "CacheHelper.dart";

class LanguageCacheHelper {
  Future<void> cachedLanguageCode(String langCode) async {
    CacheHelper.setString("langcode", langCode);
  }

  Future<String> getCachedlangCode() async {
    String? CachedlangCode = CacheHelper.getString("langcode");
    if (CachedlangCode != null) {
      return CachedlangCode;
    } else {
      return "en";
    }
  }
}
