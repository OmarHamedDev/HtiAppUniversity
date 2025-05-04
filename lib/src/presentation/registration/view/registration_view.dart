import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/api/network/error/error_handler.dart';
import 'package:hti_univerity/core/utils/dialogs/loading_dialog.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/registration_action.dart';
import '../view_model/registration_cubit.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  var registrationView = getIt.get<RegistrationCubit>();
  @override
  void initState() {
    registrationView.doAction(GetRegisteredCourseAction(studentId: "4010"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => registrationView,
      child: BaseScaffold(
        child: BlocConsumer<RegistrationCubit, RegistrationState>(
          listener: (context, state) {
            if (state is RemoveRegisteredCourseLoadingState) {
              LoadingDialog.showLoadingDialog(context);
            }
            if (state is RemoveRegisteredCourseSuccessState) {
              LoadingDialog.hideLoadingDialog(context);
              LoadingDialog.showSuccessDialog(context,
                  message: "Registration Deleted Course Successfully",
              onPressed: () {
                LoadingDialog.hideLoadingDialog(context);
                registrationView.doAction(
                    GetRegisteredCourseAction(studentId: "4010"));

              },);
            } else if (state is RemoveRegisteredCourseErrorState) {
              LoadingDialog.hideLoadingDialog(context);
              LoadingDialog.showErrorDialog(context,
                  message:
                      " No Registration Deleted Course  , please try again ");
            } else if (state is AddRegisteredCourseSuccessState) {
              registrationView
                  .doAction(GetSuggestedCoursesAction(studentId: "4010"));
            } else if (state is AddRegisteredCourseErrorState) {
              LoadingDialog.hideLoadingDialog(context);
              LoadingDialog.showErrorDialog(context,
                  message:
                      " No Registration Added Course  , please try again ");
            }
          },
          builder: (context, state) {
            if (state is GetRegisteredCourseLoadingState) {
              return HandleState.loading();
            }
            if (state is GetSuggestedCoursesLoadingState) {
              return HandleState.loading();
            } else if (state is GetRegisteredCourseErrorState) {
              return HandleState.error(state.exception);
            } else if (state is GetSuggestedCoursesErrorState) {
              return HandleState.error(state.exception);
            }
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                leading: !registrationView.isRegistrationBody
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          registrationView.buildBodyBodyWidget(
                              BodyWidgetType.registrationBody);
                          registrationView.doAction(
                              GetRegisteredCourseAction(studentId: "4010"));
                        },
                      )
                    : Container(),
              ),
              body: registrationView.bodyWidgetRegistration,
            );
          },
        ),
      ),
    );
  }
}
