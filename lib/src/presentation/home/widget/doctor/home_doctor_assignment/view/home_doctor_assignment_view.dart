import 'package:flutter/material.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../widget/doctor_assignment_body_widget.dart';

class DoctorAssignmentView extends StatelessWidget {
  const DoctorAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Scaffold(
        appBar: AppBar(
          leading: const BottomBackWidget(),
        ),
        body: DoctorAssignmentBodyWidget(),
      ),
    );
  }
}
