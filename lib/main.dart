import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hti_univerity/hti_university_app.dart';
import 'package:hti_univerity/src/data/data_source/offline_data_source/model/app_user_local_model/app_user_local_model.dart';
import 'core/caching/cache_keys.dart';
import 'core/utils/functions/bloc_observer/bloc_observer.dart';
import 'dependency_inversion/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await configureDependencies();
  await Hive.initFlutter();
  Hive.registerAdapter(AppUserLocalModelAdapter());
  if (!Hive.isBoxOpen(CacheKeys.user)) {
    await Hive.openBox<AppUserLocalModel>(CacheKeys.user);
  }
  runApp(HtiUniversityApp());
}