import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';

import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import 'action_buttons_row_item_widget.dart';

class AdminQuickButtonWidget extends StatefulWidget {
  const AdminQuickButtonWidget({super.key});

  @override
  State<AdminQuickButtonWidget> createState() => _AdminQuickButtonWidgetState();
}

class _AdminQuickButtonWidgetState extends State<AdminQuickButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Quick Buttons",
          style: AppFonts.font16kBlackWeight400Inter,
        ),
        verticalSpace(16),
        Row(
          children: [
            Expanded(
              child: ActionButtonsRowItemWidget(
                label: "Uploading Tables of Materials",
                onTap: () {
                  uploadTableOfMaterialsButtonSheet(context);
                },
                textColor: AppColors.kWhite,
                color: AppColors.kPrimary,
              ),
            ),
            horizontalSpace(12),
            Expanded(
              child: ActionButtonsRowItemWidget(
                label: "Uploading Tables of Materials",
                onTap: () {},
                textColor: AppColors.kBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> uploadTableOfMaterialsButtonSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                AppColors.kBackground,
                AppColors.kWhite,
                AppColors.kWhite
              ],
            ),
          ),
          width: double.infinity,
          height: 300.h,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Upload Table of Materials",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimary,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: AppColors.kGrey),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Icon(
                  Icons.insert_drive_file_outlined,
                  size: 70.r,
                  color: AppColors.kPrimary.withOpacity(0.7),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Choose an Excel file (.xlsx) to upload",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.kGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                ElevatedButton.icon(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['xlsx'],
                    );

                    if (result != null && result.files.single.path != null) {
                      String path = result.files.single.path!;
                      setState(() {
                     var    selectedFileName = result.files.single.name;
                      });

                      print("File path: $path");
                    } else {
                      // المستخدم لغى العملية
                      print("No file selected");
                    }},
                  icon: Icon(Icons.upload_file),
                  label: Text("Choose File", style: TextStyle(fontSize: 14.sp)),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                    backgroundColor: AppColors.kPrimary,
                    foregroundColor: AppColors.kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                // Placeholder for file name display (optional)
              ],
            ),
          ),
        );
      },
    );
  }
}
