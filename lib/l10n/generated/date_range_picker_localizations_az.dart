import 'date_range_picker_localizations.dart';

/// The translations for Azerbaijani (`az`).
class DateRangePickerLocalizationAz extends DateRangePickerLocalization {
  DateRangePickerLocalizationAz([String locale = 'az']) : super(locale);

  @override
  String get from => 'Başlanğıc tarix';

  @override
  String get to => 'Son tarix';

  @override
  String get cancel => 'İmtina';

  @override
  String get apply => 'Təstiq et';
}
