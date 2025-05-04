import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor/view/home_doctor_view.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/view/home_student_view.dart';
import 'package:hti_univerity/src/presentation/widgets/roles_body_widget/role_body_widget.dart';
import '../widget/admin/home_admin/view/home_admin_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoleBodyWidget.getBody(
      context: context,
      studentBodyWidget: HomeStudentView(),
      doctorBodyWidget: HomeDoctorView(),
      adminBodyWidget: HomeAdminView(),
    )!;
  }
}
