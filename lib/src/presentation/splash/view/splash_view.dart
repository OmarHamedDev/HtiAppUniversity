import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/images/app_images.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:provider/provider.dart';
import '../../../../config/routes/app_page_route_provider.dart';



class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startSplashTimer();
  }

  void _startSplashTimer() {
    _timer = Timer(const Duration(seconds: 3), _handleNavigation);
  }

  Future<void> _handleNavigation() async {
    final appConfigProvider = Provider.of<AppConfigProvider>(context, listen: false);
    await appConfigProvider.initializeAppConfig();
    final initialRoute = appConfigProvider.getInitialPageRouteName();
    if (!mounted) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      initialRoute,
          (route) => false,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            AppImages.logo,
            fit: BoxFit.cover,
            height: 100.h,
            width: 100.w,
          ),
        ),
      ),
    );
  }
}
