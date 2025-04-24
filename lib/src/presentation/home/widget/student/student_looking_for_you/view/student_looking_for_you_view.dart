import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/student_looking_for_you/widget/student_looking_body_widget.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../widgets/bottom_back_widget.dart';

class StudentLookingForYou extends StatelessWidget {
  const StudentLookingForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Scaffold(
        appBar: AppBar(
          leading: const BottomBackWidget(),
        ),
        body: StudentLookingBodyWidget(),
      ),
    );
  }
}
