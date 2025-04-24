import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/config/routes/app_routes.dart';
import 'package:hti_univerity/config/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'config/routes/app_page_route_provider.dart';
import 'config/routes/page_route_name.dart';

class HtiUniversityApp extends StatelessWidget {
  const HtiUniversityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ChangeNotifierProvider<AppConfigProvider>(
          create: (_) => AppConfigProvider(),
          child: MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale("en"),
            debugShowCheckedModeBanner: false,
            initialRoute: PageRouteName.splash,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            theme: AppTheme.appTheme,
          ),
        );
      },
    );
  }
}
