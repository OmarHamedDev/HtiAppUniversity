import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hti_univerity/src/presentation/event/view/event_view.dart';
import 'package:hti_univerity/src/presentation/home/view/home_view.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../profile/view/profile_view.dart';

part 'section_state.dart';
@injectable
class SectionCubit extends Cubit<SectionState> {
  SectionCubit() : super(SectionInitial());

  List<Widget>bodyWidget=[
    HomeView(),
    EventView(),
    HomeView(),
    ProfileView(),
  ];
  int _currentIndex=0;
  int get currentIndex=>_currentIndex;
  void changeOnTabBottomSheet(int index){
    _currentIndex=index;
    emit(ChangeSectionState());
  }
}
