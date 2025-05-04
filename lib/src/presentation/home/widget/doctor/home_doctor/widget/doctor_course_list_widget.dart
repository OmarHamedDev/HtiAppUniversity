import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor/view_model/home_doctor_cubit.dart';
import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../shared_widget/course_list_item_widget.dart';

class DoctorCourseListWidget extends StatelessWidget {
  const DoctorCourseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var doctorViewModel = context.read<HomeDoctorCubit>();
    var courses = doctorViewModel.doctorCourseEntity ?? [];
    return Expanded(
      child: ListView.separated(
        itemCount: courses.length,
        separatorBuilder: (context, index) => Padding(
          padding:  EdgeInsets.symmetric(vertical: 6.0.h),
          child: CustomDividerWidget(),
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _navigateToLookingForYou(
                context, courses[index].courseName ?? ""),
               child: CourseListItemWidget(
                 title:
                  "${courses[index].courseName} (${courses[index].groupName ?? "G1"})" ??
                      "",
            ),
          );
        },
      ),
    );
  }

  void _navigateToLookingForYou(BuildContext context, String id) {
    Navigator.pushNamed(context, PageRouteName.doctorLookingForYou,
        arguments: id);
  }
}
