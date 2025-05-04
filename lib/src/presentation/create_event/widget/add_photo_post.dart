// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hti_univerity/core/styles/colors/app_colors.dart';
// import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';
// import '../../../../../core/utils/functions/spaceing/spaceing.dart';
// import '../../../../core/service/image_picker_service/image_source_type.dart';
// import '../view_model/create_event_post_cubit.dart';
//
// class AddPhotoPost extends StatefulWidget {
//   const AddPhotoPost({super.key});
//
//   @override
//   State<AddPhotoPost> createState() => _AddPhotoPostState();
// }
//
// class _AddPhotoPostState extends State<AddPhotoPost> {
//   @override
//   Widget build(BuildContext context) {
//     var createEventPostCubit = context.read<CreateEventPostCubit>();
//     return InkWell(
//       onTap: () async {
//         final image = await createEventPostCubit.pickAndUploadImage(imageSourceType: ImageSourceType.gallery);
//         if (image != null) {
//           setState(() {});
//         }
//       },
//       child: Container(
//         height: 48.h,
//         decoration: ShapeDecoration(
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               width: 1,
//               strokeAlign: BorderSide.strokeAlignOutside,
//               color: AppColors.kGrey,
//             ),
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 13.0),
//           child: Row(
//             children: [
//               Container(
//                 width: 24.w,
//                 height: 24.h,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(),
//                 child: Icon(Icons.photo_camera_back),
//               ),
//               horizontalSpace(10),
//               Text('Add Photo', style: AppFonts.font16kBlackWeight400Inter),
//             ],
//           ),
//         )));
//
//   }
// }
