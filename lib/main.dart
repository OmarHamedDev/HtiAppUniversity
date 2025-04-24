import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hti_univerity/hti_university_app.dart';
import 'core/utils/functions/bloc_observer/bloc_observer.dart';
import 'dependency_inversion/di.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const HtiUniversityApp());
}

