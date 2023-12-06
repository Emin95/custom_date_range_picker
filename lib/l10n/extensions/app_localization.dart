import 'package:custom_date_range_picker/l10n/generated/date_range_picker_localizations.dart';
import 'package:flutter/widgets.dart';

extension AppLocalizationsX on BuildContext {
  DateRangePickerLocalization get l10n => DateRangePickerLocalization.of(this)!;
}
