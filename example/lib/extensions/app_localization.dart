import 'package:examples/l10n/generated/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalization? get l10n => AppLocalization.of(this);
}
