import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/api/network/error/error_handler.dart';
import 'package:hti_univerity/core/styles/colors/app_colors.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/dependency_inversion/di.dart';
import 'package:hti_univerity/src/presentation/create_event/view_model/create_event_post_cubit.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/dialogs/loading_dialog.dart';
import '../../widgets/bottom_back_widget.dart';
import '../view_model/create_event_post_state.dart';
import '../widget/add_event_body_widget.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventPostState();
}

class _CreateEventPostState extends State<CreateEventView> {
  var createEventPostCubit = getIt.get<CreateEventPostCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createEventPostCubit,
      child: BlocBuilder<CreateEventPostCubit, CreateEventPostState>(
        builder: (context, state) {
          return BlocListener<CreateEventPostCubit, CreateEventPostState>(
            listener: (context, state) {
              _handleBlocListenerEventState(state);
            },
            child: BaseScaffold(
                child: Scaffold(
              appBar: AppBar(
                leading: const BottomBackWidget(),
                title: Text('Create Post',
                    style: AppFonts.font16kBlackWeight500Inter),
                centerTitle: false,
              ),
              body: AddEventBodyWidget(),
            )),
          );
        },
      ),
    );
  }

  dynamic _handleBlocListenerEventState(CreateEventPostState state) {
    if (state is CreateEventPostLoadingState) {
      LoadingDialog.showLoadingDialog(context);
    } else if (state is CreateEventPostErrorState) {
      LoadingDialog.hideLoadingDialog(context);
      final errorMessage =
      ErrorHandler.formException(state.exception);
      LoadingDialog.showErrorDialog(context,
          message: errorMessage.errorMassage);
    } else if (state is CreateEventPostSuccessState) {
      LoadingDialog.hideLoadingDialog(context);
      LoadingDialog.showSuccessDialog(context,
          message: "Event Created Successfully");
    }
  }
}
