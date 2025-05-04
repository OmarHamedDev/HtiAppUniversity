import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/widget/table_data_row_widget.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/widget/table_header_row_widget.dart';
import '../../../view_model/registration_action.dart';
import '../../../view_model/registration_cubit.dart';

class RegistrationTable extends StatelessWidget {
  const RegistrationTable({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        final registrationCubit = context.read<RegistrationCubit>();
        return SizedBox(
          width: double.infinity,
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(color: Colors.grey, width: 1),
            columnWidths: const {
              0: FlexColumnWidth(4),
              1: FlexColumnWidth(6),
              2: FlexColumnWidth(3.5),
              3: FlexColumnWidth(4),
              4: FlexColumnWidth(5),
            },
            children: [
              TableHeaderRowWidget.build(),
              ...registrationCubit.suggestedCourses.map((course) {
                return TableDataRowWidget.build(
                  onTap: () {
                    registrationCubit.doAction(
                      AddRegisteredCourseAction(
                      groupId: course.groupId ?? 0,
                        studentId: 4010,
                        courseId: course.courseId ?? 0,

                      ),
                    );
                  },
                  data: [
                    '+',
                    course.courseName ?? '',
                    course.units.toString() ?? "",
                    course.dayName ?? '',
                    course.availableSeats.toString(),
                  ],
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}
