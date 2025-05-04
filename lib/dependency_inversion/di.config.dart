// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../config/routes/app_page_route_provider.dart' as _i941;
import '../core/caching/secure_storge/caching_Data.dart' as _i283;
import '../core/caching/secure_storge/secure_storage.dart' as _i987;
import '../core/service/image_picker_service/image_picker_service.dart'
    as _i177;
import '../core/service/image_picker_service/image_picker_service_impl.dart'
    as _i332;
import '../src/data/api/api_manger.dart' as _i793;
import '../src/data/api/network_factory.dart' as _i13;
import '../src/data/api/upload_apI_manger.dart' as _i623;
import '../src/data/data_source/offline_data_source/auth_offline_data_source/auth_offline_data_source.dart'
    as _i191;
import '../src/data/data_source/offline_data_source/auth_offline_data_source/auth_offline_data_source_impl.dart'
    as _i735;
import '../src/data/data_source/remote_data_source/admin_remote_data_source/admin_remote_data_source.dart'
    as _i231;
import '../src/data/data_source/remote_data_source/admin_remote_data_source/admin_remote_data_source_impl.dart'
    as _i572;
import '../src/data/data_source/remote_data_source/auth_remote_data_source/auth_remote_data_source.dart'
    as _i841;
import '../src/data/data_source/remote_data_source/auth_remote_data_source/auth_remote_data_source_impl.dart'
    as _i30;
import '../src/data/data_source/remote_data_source/doctor_remote_data_source/doctor_remote_data_source.dart'
    as _i298;
import '../src/data/data_source/remote_data_source/doctor_remote_data_source/doctor_remote_data_source_impl.dart'
    as _i207;
import '../src/data/data_source/remote_data_source/event_remote_data_source/event_remote_data_source.dart'
    as _i354;
import '../src/data/data_source/remote_data_source/event_remote_data_source/event_remote_data_source_impl.dart'
    as _i193;
import '../src/data/data_source/remote_data_source/registration_remote_data_source/registration_remote_data_source.dart'
    as _i995;
import '../src/data/data_source/remote_data_source/registration_remote_data_source/registration_remote_data_source_impl.dart'
    as _i222;
import '../src/data/data_source/remote_data_source/student_remote_data_source/student_remote_data_source.dart'
    as _i882;
import '../src/data/data_source/remote_data_source/student_remote_data_source/student_remote_data_source_impl.dart'
    as _i1031;
import '../src/data/mappers/admin_mapper.dart' as _i310;
import '../src/data/mappers/auth_mapper.dart' as _i26;
import '../src/data/mappers/doctor_mapper.dart' as _i381;
import '../src/data/mappers/event_mapper.dart' as _i1007;
import '../src/data/mappers/registeration_mapper.dart' as _i424;
import '../src/data/mappers/student_mapper.dart' as _i324;
import '../src/data/repository_impl/admin_repository_impl.dart' as _i238;
import '../src/data/repository_impl/auth_repository_impl.dart' as _i176;
import '../src/data/repository_impl/doctor_repository_impl.dart' as _i180;
import '../src/data/repository_impl/event_repository_impl.dart' as _i730;
import '../src/data/repository_impl/registration_repository_impl.dart' as _i722;
import '../src/data/repository_impl/student_repository_impl.dart' as _i321;
import '../src/domain/repository/admin_repository.dart' as _i180;
import '../src/domain/repository/auth_repository.dart' as _i365;
import '../src/domain/repository/doctor_repository.dart' as _i792;
import '../src/domain/repository/event_repository.dart' as _i47;
import '../src/domain/repository/registration_repository.dart' as _i42;
import '../src/domain/repository/student_repository.dart' as _i550;
import '../src/domain/use_case/admin_use_case/get_admin_notification_count_use_case.dart'
    as _i894;
import '../src/domain/use_case/admin_use_case/get_all_admin_notification_use_case.dart'
    as _i829;
import '../src/domain/use_case/admin_use_case/get_faculty_count_use_case.dart'
    as _i579;
import '../src/domain/use_case/admin_use_case/get_student_count_use_case.dart'
    as _i142;
import '../src/domain/use_case/auth_use_case/change_password_use_case.dart'
    as _i727;
import '../src/domain/use_case/auth_use_case/forget_password_use_case.dart'
    as _i693;
import '../src/domain/use_case/auth_use_case/login_use_case.dart' as _i913;
import '../src/domain/use_case/auth_use_case/logout_use_case.dart' as _i538;
import '../src/domain/use_case/auth_use_case/register_use_case.dart' as _i441;
import '../src/domain/use_case/auth_use_case/reset_password_use_case.dart'
    as _i672;
import '../src/domain/use_case/auth_use_case/verify_reset_code_use_case.dart'
    as _i544;
import '../src/domain/use_case/doctor_use_case/create_assignment_doctor_use_case.dart'
    as _i531;
import '../src/domain/use_case/doctor_use_case/create_quiz_doctor_use_case.dart'
    as _i246;
import '../src/domain/use_case/doctor_use_case/get_all_doctor_notification_submission_use_case.dart'
    as _i410;
import '../src/domain/use_case/doctor_use_case/get_attendance_week_details_use_case.dart'
    as _i475;
import '../src/domain/use_case/doctor_use_case/get_attendance_week_doctor_use_case.dart'
    as _i728;
import '../src/domain/use_case/doctor_use_case/get_home_doctor_use_case.dart'
    as _i155;
import '../src/domain/use_case/event/create_post_event_use_case.dart' as _i748;
import '../src/domain/use_case/event/get_all_event_use_case.dart' as _i163;
import '../src/domain/use_case/registration/add_registered_course_use_case.dart'
    as _i526;
import '../src/domain/use_case/registration/delete_registered_course_course_use_case.dart'
    as _i563;
import '../src/domain/use_case/registration/get_registered_course_use_case.dart'
    as _i1022;
import '../src/domain/use_case/registration/get_suggested_courses_use_case.dart'
    as _i792;
import '../src/domain/use_case/student/get_assignment_for_student_use_case.dart'
    as _i131;
import '../src/domain/use_case/student/get_attendance_for_student_use_case.dart'
    as _i214;
import '../src/domain/use_case/student/get_home_student_use_case.dart' as _i761;
import '../src/domain/use_case/student/get_notification_student_use_case.dart'
    as _i579;
import '../src/domain/use_case/student/get_quiz_for_student_use_case.dart'
    as _i968;
import '../src/presentation/change_password/view_model/change_password_cubit.dart'
    as _i564;
import '../src/presentation/create_event/view_model/create_event_post_cubit.dart'
    as _i510;
import '../src/presentation/event/view_model/event_cubit.dart' as _i242;
import '../src/presentation/forget_password/view_model/forget_password_cubit.dart'
    as _i868;
import '../src/presentation/home/widget/admin/home_admin/view_model/home_admin_cubit.dart'
    as _i656;
import '../src/presentation/home/widget/admin/notification_admin/view_model/admin_notification_cubit.dart'
    as _i285;
import '../src/presentation/home/widget/doctor/doctor_assignment/view_model/doctor_assignment_cubit.dart'
    as _i32;
import '../src/presentation/home/widget/doctor/doctor_attendance/view_model/attendance_doctor_cubit.dart'
    as _i297;
import '../src/presentation/home/widget/doctor/doctor_attendance_details/view_model/doctor_attendance_details_cubit.dart'
    as _i408;
import '../src/presentation/home/widget/doctor/doctor_quiz/view_model/doctor_quiz_cubit.dart'
    as _i228;
import '../src/presentation/home/widget/doctor/home_doctor/view_model/home_doctor_cubit.dart'
    as _i728;
import '../src/presentation/home/widget/doctor/notification_doctor/view_model/doctor_notification_cubit.dart'
    as _i721;
import '../src/presentation/home/widget/student/home_student/view_model/home_student_cubit.dart'
    as _i613;
import '../src/presentation/home/widget/student/student_assignment/view_model/assignment_student_cubit.dart'
    as _i53;
import '../src/presentation/home/widget/student/student_attendance/view_model/attendance_student_cubit.dart'
    as _i601;
import '../src/presentation/home/widget/student/student_notification/view_model/student_notification_cubit.dart'
    as _i286;
import '../src/presentation/home/widget/student/student_quiz/view_model/quiz_student_cubit.dart'
    as _i475;
import '../src/presentation/login/view_model/login_cubit.dart' as _i803;
import '../src/presentation/onboarding/view_model/onboarding_view_model.dart'
    as _i715;
import '../src/presentation/register/view_model/register_cubit.dart' as _i1059;
import '../src/presentation/registration/view_model/registration_cubit.dart'
    as _i458;
import '../src/presentation/reset_password/view_model/reset_password_cubit.dart'
    as _i687;
import '../src/presentation/section/view_model/section_cubit.dart' as _i869;
import '../src/presentation/verify_reset_code/view_model/verify_reset_code_cubit.dart'
    as _i788;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioProvider = _$DioProvider();
    gh.factory<_i715.OnboardingViewModel>(() => _i715.OnboardingViewModel());
    gh.factory<_i869.SectionCubit>(() => _i869.SectionCubit());
    gh.singleton<_i941.AppConfigProvider>(() => _i941.AppConfigProvider());
    gh.lazySingleton<_i361.Dio>(() => dioProvider.dioProvider());
    gh.lazySingleton<_i361.LogInterceptor>(() => dioProvider.providePretty());
    gh.lazySingleton<_i13.AppInterceptors>(() => _i13.AppInterceptors());
    gh.factory<_i1007.EventMapperAbstract>(() => _i1007.EventMapperImpl());
    gh.factory<_i310.AdminMapper>(() => _i310.AdminMapperImpl());
    gh.factory<_i283.CachingDataSecureStorage>(
        () => _i987.SecureStorageFunction());
    gh.factory<_i177.ImagePickerService>(() => _i332.ImagePickerServiceImpl());
    gh.factory<_i324.StudentMapper>(() => _i324.StudentMapperImpl());
    gh.factory<_i623.UploadApiManger>(() => _i623.UploadApiManagerImpl());
    gh.factory<_i424.RegisteredMapper>(() => _i424.RegisteredMapperImpl());
    gh.factory<_i793.ApiManger>(() => _i793.ApiManger(gh<_i361.Dio>()));
    gh.factory<_i381.DoctorMapper>(() => _i381.DoctorMapperImpl());
    gh.factory<_i26.AuthMapper>(() => _i26.AuthMapperImpl());
    gh.factory<_i298.DoctorRemoteDataSource>(
        () => _i207.DoctorRemoteDataSourceImpl(
              gh<_i793.ApiManger>(),
              gh<_i381.DoctorMapper>(),
            ));
    gh.factory<_i354.EventRemoteDataSource>(
        () => _i193.EventRemoteDataSourceImpl(
              gh<_i793.ApiManger>(),
              gh<_i1007.EventMapperAbstract>(),
              gh<_i623.UploadApiManger>(),
            ));
    gh.factory<_i995.RegistrationRemoteDataSource>(
        () => _i222.RegistrationRemoteDataSourceImpl(
              gh<_i424.RegisteredMapper>(),
              gh<_i793.ApiManger>(),
            ));
    gh.factory<_i231.AdminRemoteDataSource>(
        () => _i572.AdminRemoteDataSourceImpl(
              gh<_i793.ApiManger>(),
              gh<_i310.AdminMapper>(),
            ));
    gh.factory<_i42.RegistrationRepository>(() =>
        _i722.RegistrationRepositoryImpl(
            gh<_i995.RegistrationRemoteDataSource>()));
    gh.factory<_i792.DoctorRepository>(
        () => _i180.DoctorRepositoryImpl(gh<_i298.DoctorRemoteDataSource>()));
    gh.factory<_i882.StudentRemoteDataSource>(
        () => _i1031.StudentRemoteDataSourceImpl(
              gh<_i793.ApiManger>(),
              gh<_i324.StudentMapper>(),
            ));
    gh.factory<_i550.StudentRepository>(
        () => _i321.StudentRepositoryImpl(gh<_i882.StudentRemoteDataSource>()));
    gh.factory<_i47.EventRepository>(
        () => _i730.EventRepositoryImpl(gh<_i354.EventRemoteDataSource>()));
    gh.factory<_i1022.GetRegisteredCourseUseCase>(() =>
        _i1022.GetRegisteredCourseUseCase(gh<_i42.RegistrationRepository>()));
    gh.factory<_i792.GetSuggestedCoursesUseCase>(() =>
        _i792.GetSuggestedCoursesUseCase(gh<_i42.RegistrationRepository>()));
    gh.factory<_i191.AuthOfflineDataSource>(
        () => _i735.AuthOfflineDataSourceImpl(
              gh<_i283.CachingDataSecureStorage>(),
              gh<_i26.AuthMapper>(),
            ));
    gh.factory<_i841.AuthRemoteDataSource>(() => _i30.AuthRemoteDataSourceImpl(
          gh<_i793.ApiManger>(),
          gh<_i26.AuthMapper>(),
        ));
    gh.factory<_i531.CreateAssignmentDoctorUseCase>(() =>
        _i531.CreateAssignmentDoctorUseCase(gh<_i792.DoctorRepository>()));
    gh.factory<_i246.CreateQuizDoctorUseCase>(
        () => _i246.CreateQuizDoctorUseCase(gh<_i792.DoctorRepository>()));
    gh.factory<_i475.GetAttendanceWeekDetailsUseCase>(() =>
        _i475.GetAttendanceWeekDetailsUseCase(gh<_i792.DoctorRepository>()));
    gh.factory<_i728.GetAttendanceWeekDoctorUseCase>(() =>
        _i728.GetAttendanceWeekDoctorUseCase(gh<_i792.DoctorRepository>()));
    gh.factory<_i155.GetHomeDoctorUseCase>(
        () => _i155.GetHomeDoctorUseCase(gh<_i792.DoctorRepository>()));
    gh.factory<_i526.AddRegisteredCourseUseCase>(() =>
        _i526.AddRegisteredCourseUseCase(gh<_i42.RegistrationRepository>()));
    gh.factory<_i297.AttendanceDoctorCubit>(() => _i297.AttendanceDoctorCubit(
          gh<_i475.GetAttendanceWeekDetailsUseCase>(),
          gh<_i728.GetAttendanceWeekDoctorUseCase>(),
        ));
    gh.factory<_i32.DoctorAssignmentCubit>(() =>
        _i32.DoctorAssignmentCubit(gh<_i531.CreateAssignmentDoctorUseCase>()));
    gh.factory<_i563.DeleteRegisteredCourseCourseUseCase>(() =>
        _i563.DeleteRegisteredCourseCourseUseCase(
            gh<_i42.RegistrationRepository>()));
    gh.factory<_i180.AdminRepository>(
        () => _i238.AdminRepositoryImpl(gh<_i231.AdminRemoteDataSource>()));
    gh.factory<_i410.GetAllDoctorNotificationSubmissionUseCase>(() =>
        _i410.GetAllDoctorNotificationSubmissionUseCase(
            gh<_i792.DoctorRepository>()));
    gh.factory<_i894.GetAdminNotificationCountUseCase>(() =>
        _i894.GetAdminNotificationCountUseCase(gh<_i180.AdminRepository>()));
    gh.factory<_i829.GetAllAdminNotificationUseCase>(() =>
        _i829.GetAllAdminNotificationUseCase(gh<_i180.AdminRepository>()));
    gh.factory<_i579.GetFacultyCountUseCase>(
        () => _i579.GetFacultyCountUseCase(gh<_i180.AdminRepository>()));
    gh.factory<_i142.GetStudentCountUseCase>(
        () => _i142.GetStudentCountUseCase(gh<_i180.AdminRepository>()));
    gh.factory<_i131.GetAssignmentForStudentUseCase>(() =>
        _i131.GetAssignmentForStudentUseCase(gh<_i550.StudentRepository>()));
    gh.factory<_i214.GetAttendanceForStudentUseCase>(() =>
        _i214.GetAttendanceForStudentUseCase(gh<_i550.StudentRepository>()));
    gh.factory<_i761.GetHomeStudentUseCase>(
        () => _i761.GetHomeStudentUseCase(gh<_i550.StudentRepository>()));
    gh.factory<_i579.GetNotificationStudentUseCase>(() =>
        _i579.GetNotificationStudentUseCase(gh<_i550.StudentRepository>()));
    gh.factory<_i968.GetQuizForStudentUseCase>(
        () => _i968.GetQuizForStudentUseCase(gh<_i550.StudentRepository>()));
    gh.factory<_i656.HomeAdminCubit>(() => _i656.HomeAdminCubit(
          gh<_i579.GetFacultyCountUseCase>(),
          gh<_i142.GetStudentCountUseCase>(),
          gh<_i894.GetAdminNotificationCountUseCase>(),
        ));
    gh.factory<_i228.DoctorQuizCubit>(
        () => _i228.DoctorQuizCubit(gh<_i246.CreateQuizDoctorUseCase>()));
    gh.factory<_i285.AdminNotificationCubit>(() => _i285.AdminNotificationCubit(
        gh<_i829.GetAllAdminNotificationUseCase>()));
    gh.factory<_i408.DoctorAttendanceDetailsCubit>(() =>
        _i408.DoctorAttendanceDetailsCubit(
            gh<_i475.GetAttendanceWeekDetailsUseCase>()));
    gh.factory<_i163.GetAllEventUseCase>(
        () => _i163.GetAllEventUseCase(gh<_i47.EventRepository>()));
    gh.factory<_i748.CreatePostEventUseCase>(
        () => _i748.CreatePostEventUseCase(gh<_i47.EventRepository>()));
    gh.factory<_i365.AuthRepository>(() => _i176.AuthRepositoryImpl(
          gh<_i841.AuthRemoteDataSource>(),
          gh<_i191.AuthOfflineDataSource>(),
        ));
    gh.factory<_i728.HomeDoctorCubit>(
        () => _i728.HomeDoctorCubit(gh<_i155.GetHomeDoctorUseCase>()));
    gh.factory<_i53.AssignmentStudentCubit>(() => _i53.AssignmentStudentCubit(
        gh<_i131.GetAssignmentForStudentUseCase>()));
    gh.factory<_i242.EventCubit>(() => _i242.EventCubit(
          gh<_i163.GetAllEventUseCase>(),
          gh<_i177.ImagePickerService>(),
          gh<_i748.CreatePostEventUseCase>(),
        ));
    gh.factory<_i613.HomeStudentCubit>(
        () => _i613.HomeStudentCubit(gh<_i761.GetHomeStudentUseCase>()));
    gh.factory<_i458.RegistrationCubit>(() => _i458.RegistrationCubit(
          gh<_i792.GetSuggestedCoursesUseCase>(),
          gh<_i563.DeleteRegisteredCourseCourseUseCase>(),
          gh<_i526.AddRegisteredCourseUseCase>(),
          gh<_i1022.GetRegisteredCourseUseCase>(),
        ));
    gh.factory<_i601.AttendanceStudentCubit>(() => _i601.AttendanceStudentCubit(
        gh<_i214.GetAttendanceForStudentUseCase>()));
    gh.factory<_i721.DoctorNotificationCubit>(() =>
        _i721.DoctorNotificationCubit(
            gh<_i410.GetAllDoctorNotificationSubmissionUseCase>()));
    gh.factory<_i510.CreateEventPostCubit>(
        () => _i510.CreateEventPostCubit(gh<_i748.CreatePostEventUseCase>()));
    gh.factory<_i727.ChangePasswordUseCase>(() => _i727.ChangePasswordUseCase(
        authRepository: gh<_i365.AuthRepository>()));
    gh.factory<_i693.ForgetPasswordUseCase>(() => _i693.ForgetPasswordUseCase(
        authRepository: gh<_i365.AuthRepository>()));
    gh.factory<_i538.LogoutUseCase>(
        () => _i538.LogoutUseCase(authRepository: gh<_i365.AuthRepository>()));
    gh.factory<_i672.ResetPasswordUseCase>(() =>
        _i672.ResetPasswordUseCase(authRepository: gh<_i365.AuthRepository>()));
    gh.factory<_i544.VerifyResetCodeUseCase>(() => _i544.VerifyResetCodeUseCase(
        authRepository: gh<_i365.AuthRepository>()));
    gh.factory<_i475.QuizStudentCubit>(
        () => _i475.QuizStudentCubit(gh<_i968.GetQuizForStudentUseCase>()));
    gh.factory<_i286.StudentNotificationCubit>(() =>
        _i286.StudentNotificationCubit(
            gh<_i579.GetNotificationStudentUseCase>()));
    gh.factory<_i913.LoginUseCase>(
        () => _i913.LoginUseCase(gh<_i365.AuthRepository>()));
    gh.factory<_i441.RegisterUseCase>(
        () => _i441.RegisterUseCase(gh<_i365.AuthRepository>()));
    gh.factory<_i1059.RegisterCubit>(
        () => _i1059.RegisterCubit(gh<_i441.RegisterUseCase>()));
    gh.factory<_i687.ResetPasswordCubit>(
        () => _i687.ResetPasswordCubit(gh<_i672.ResetPasswordUseCase>()));
    gh.factory<_i803.LoginCubit>(
        () => _i803.LoginCubit(gh<_i913.LoginUseCase>()));
    gh.factory<_i868.ForgetPasswordCubit>(
        () => _i868.ForgetPasswordCubit(gh<_i693.ForgetPasswordUseCase>()));
    gh.factory<_i788.VerifyResetCodeCubit>(
        () => _i788.VerifyResetCodeCubit(gh<_i544.VerifyResetCodeUseCase>()));
    gh.factory<_i564.ChangePasswordCubit>(
        () => _i564.ChangePasswordCubit(gh<_i727.ChangePasswordUseCase>()));
    return this;
  }
}

class _$DioProvider extends _i13.DioProvider {}
