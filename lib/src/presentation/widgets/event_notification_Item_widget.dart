import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/utils/widget/cached_network_image%20_widget.dart';
import 'package:hti_univerity/src/domain/entities/event_entity.dart';
import '../../../../../../core/utils/functions/spaceing/spaceing.dart';

class EventNotificationItemWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  const EventNotificationItemWidget(
      {super.key, required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImageWidget(
            imageUrl: imageUrl,
            width: 80.w,
            height: 80.h,
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: AutoSizeText(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.6,
            ),
            maxLines: 5,
            minFontSize: 13.0,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
