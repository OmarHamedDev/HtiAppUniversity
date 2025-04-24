import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../../view_model/home_cubit.dart';
import '../../../shared_widget/course_list_item_widget.dart';

class DoctorCourseListWidget extends StatelessWidget {
  const DoctorCourseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeViewModel = context.read<HomeCubit>();
    var courses = homeViewModel.doctorCourseEntity ?? [];
    return Expanded(
      child: ListView.separated(
        itemCount: courses.length,
        separatorBuilder: (context, index) => CustomDividerWidget(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _navigateToLookingForYou(context, courses[index].courseName ?? ""),
            child: CourseListItemWidget(
              title: "${courses[index].courseName} (${courses[index].groupName ?? "G1"})" ?? "",
            ),
          );
        },
      ),
    );
  }

  void _navigateToLookingForYou(BuildContext context, String id ) {
      Navigator.pushNamed(context, PageRouteName.doctorLookingForYou, arguments: id);
    }
}
