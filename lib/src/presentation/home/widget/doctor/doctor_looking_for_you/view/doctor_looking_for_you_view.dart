import 'package:flutter/material.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../widget/doctor_looking_body_widget.dart';
class DoctorLookingForYouView extends StatelessWidget {
  const DoctorLookingForYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold
      (
        child: Scaffold(
          appBar:AppBar(
            leading: BottomBackWidget(),
          ) ,
          body: DoctorLookingBodyWidget()
        ));
  }
}
