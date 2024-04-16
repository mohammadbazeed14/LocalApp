part of 'locale_cubit.dart';

@immutable
sealed class LocaleState {}

final class LocaleInitial extends LocaleState {}

class ChanageLanguageCode extends LocaleState {
  final Locale locale;

  ChanageLanguageCode({required this.locale});
}
