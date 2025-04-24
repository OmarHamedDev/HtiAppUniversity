import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../../config/routes/app_page_route_provider.dart';
import 'package:provider/provider.dart';



extension AppLocalizationsApp on BuildContext{
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}



extension AppConfigProviderApp on BuildContext {
  AppConfigProvider get appConfigProvider =>
      Provider.of<AppConfigProvider>(this, listen: false);
}