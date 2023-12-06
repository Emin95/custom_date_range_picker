import 'date_range_picker_localizations.dart';

/// The translations for English (`en`).
class DateRangePickerLocalizationEn extends DateRangePickerLocalization {
  DateRangePickerLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get cancel => 'Cancel';

  @override
  String get apply => 'Apply';
}
