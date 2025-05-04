import 'package:flutter/material.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';
import 'package:hti_univerity/src/domain/entities/home_entity.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../shared_widget/course_list_item_widget.dart';

class StudentCourseListWidget extends StatelessWidget {
  final List<CourseEntity> courses;
  const StudentCourseListWidget({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
      child: ListView.separated(
        itemCount: courses.length,
        separatorBuilder: (context, index) => CustomDividerWidget(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _navigateToLookingForYou(context, courses[index]),
            child: CourseListItemWidget(
              title: courses[index].name ?? "",
            ),
          );
        },
      ),
    );
  }

  void _navigateToLookingForYou(BuildContext context, CourseEntity course) {
    Navigator.pushNamed(context, PageRouteName.studentLookingForYou,
        arguments: course);
  }
}
