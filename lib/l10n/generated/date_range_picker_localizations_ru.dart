import 'date_range_picker_localizations.dart';

/// The translations for Russian (`ru`).
class DateRangePickerLocalizationRu extends DateRangePickerLocalization {
  DateRangePickerLocalizationRu([String locale = 'ru']) : super(locale);

  @override
  String get from => 'Дата начала';

  @override
  String get to => 'Конечная дата';

  @override
  String get cancel => 'Отмена';

  @override
  String get apply => 'Применить';
}
