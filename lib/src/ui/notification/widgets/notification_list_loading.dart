import 'package:flutter/material.dart';
import 'package:notification_module/src/domain/models/notification_model.dart';
import 'package:notification_module/src/ui/notification/widgets/notification_option.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationListLoading extends StatelessWidget {
  const NotificationListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return NotificationOption(
            notificationId: NotificationModel.fakeData.notificationId,
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 1.0),
      ),
    );
  }
}
