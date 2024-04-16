import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localapp/LangCacheHelper.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleInitial());

  Future<void> getSavedLanguageCode() async {
    final String cahedLanguageCode =
        await LanguageCacheHelper().getCachedlangCode();

    emit(ChanageLanguageCode(locale: Locale(cahedLanguageCode)));
  }

  Future<void> ChanagedLanguageCode(String languageCode) async {
    await LanguageCacheHelper().cachedLanguageCode(languageCode);
    emit(ChanageLanguageCode(locale: Locale(languageCode)));
  }
}
