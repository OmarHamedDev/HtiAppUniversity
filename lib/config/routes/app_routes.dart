import 'package:flutter/material.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';
import 'package:hti_univerity/src/presentation/change_password/view/change_password_view.dart';
import 'package:hti_univerity/src/presentation/forget_password/view/forget_password_view.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_looking_for_you/view/doctor_looking_for_you_view.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor_assignment/view/home_doctor_assignment_view.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/student_quiz/view/quiz_student_view.dart';
import 'package:hti_univerity/src/presentation/login/view/login_view.dart';
import 'package:hti_univerity/src/presentation/onboarding/view/onboarding_view.dart';
import '../../src/presentation/event/view/event_view.dart';
import '../../src/presentation/home/widget/doctor/attendance_doctor/view/doctor_attendance_detials_view.dart';
import '../../src/presentation/home/widget/doctor/attendance_doctor/view/doctor_attendance_view.dart';
import '../../src/presentation/home/widget/notifications/view/notification_view.dart';
import '../../src/presentation/home/widget/student/student_assignment/view/student_assignment_view.dart';
import '../../src/presentation/home/widget/student/student_attendance/view/student_attendance_view.dart';
import '../../src/presentation/home/widget/student/student_looking_for_you/view/student_looking_for_you_view.dart';
import '../../src/presentation/register/view/register_view.dart';
import '../../src/presentation/reset_password/view/reset_password_view.dart';
import '../../src/presentation/section/view/section_view.dart';
import '../../src/presentation/splash/view/splash_view.dart';
import '../../src/presentation/verify_reset_code/view/verify_reset_code_view.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.splash:
        return _handleMaterialPageRoute(
            widget: const SplashView(), settings: settings);
      case PageRouteName.onBoarding:
        return _handleMaterialPageRoute(
            widget: const OnboardingView(), settings: settings);
      case PageRouteName.login:
        return _handleMaterialPageRoute(
            widget: const LoginView(), settings: settings);
      case PageRouteName.register:
        return _handleMaterialPageRoute(
            widget: const RegisterView(), settings: settings);
      case PageRouteName.forgetPassword:
        return _handleMaterialPageRoute(
            widget: const ForgetPasswordView(), settings: settings);
      case PageRouteName.verifyResetCode:
        return _handleMaterialPageRoute(
            widget: const VerifyResetCodeView(), settings: settings);
      case PageRouteName.resetPassword:
        return _handleMaterialPageRoute(
            widget: const ResetPasswordView(), settings: settings);
      case PageRouteName.changePassword:
        return _handleMaterialPageRoute(
            widget: const ChangePasswordView(), settings: settings);

      case PageRouteName.section:
        return _handleMaterialPageRoute(
            widget: const SectionView(), settings: settings);
      case PageRouteName.studentLookingForYou:
        return _handleMaterialPageRoute(
            widget: const StudentLookingForYou(), settings: settings);
      case PageRouteName.doctorLookingForYou:
        return _handleMaterialPageRoute(
            widget: const DoctorLookingForYouView(), settings: settings);
      case PageRouteName.doctorAttendance:
        return _handleMaterialPageRoute(
            widget: const DoctorAttendanceView(), settings: settings);
      case PageRouteName.doctorAttendanceDetails:
        return _handleMaterialPageRoute(
            widget: const DoctorAttendanceDetailsView(), settings: settings);
      case PageRouteName.doctorAssignment:
        return _handleMaterialPageRoute(
            widget: const DoctorAssignmentView(), settings: settings);
      case PageRouteName.notification:
        return _handleMaterialPageRoute(
            widget: const NotificationView(), settings: settings);
      case PageRouteName.studentAttendance:
        return _handleMaterialPageRoute(
            widget: const StudentAttendanceView(), settings: settings);
      case PageRouteName.studentAssignment:
        return _handleMaterialPageRoute(
            widget: const StudentAssignmentView(), settings: settings);
      case PageRouteName.studentQuiz:
        return _handleMaterialPageRoute(
            widget: const QuizStudentView(), settings: settings);
      case PageRouteName.event:
        return _handleMaterialPageRoute(
            widget: const EventView(), settings: settings);
      default:
        return _handleMaterialPageRoute(
            widget: const OnboardingView(), settings: settings);
    }
  }

  static MaterialPageRoute<dynamic> _handleMaterialPageRoute(
      {required Widget widget, required RouteSettings settings}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => widget,
    );
  }
}
