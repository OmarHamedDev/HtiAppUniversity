import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/section_cubit.dart';
import '../widget/custom_bottom_navbar_widget.dart';

class SectionView extends StatefulWidget {
  const SectionView({super.key});

  @override
  State<SectionView> createState() => _SectionViewState();
}

class _SectionViewState extends State<SectionView> {
  @override
  void initState() {
    super.initState();
  }

  var sectionCubit = getIt<SectionCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sectionCubit,
      child: BlocBuilder<SectionCubit, SectionState>(
        builder: (context, state) {
          return BaseScaffold(
              child: SafeArea(
            child: Scaffold(

              bottomNavigationBar: CustomBottomNavBar(),
              body:
              sectionCubit.bodyWidget[sectionCubit.currentIndex],
            ),
          ));
        },
      ),
    );
  }
}
