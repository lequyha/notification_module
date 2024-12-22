import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:notification_module/src/domain/models/notification_model.dart';
import 'package:notification_module/src/ui/notification/bloc/notification_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationOption extends StatelessWidget {
  final int notificationId;

  const NotificationOption({
    super.key,
    required this.notificationId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationBloc, NotificationState,
        NotificationModel?>(
      selector: (state) {
        return state.notifications.firstWhereOrNull(
          (notification) => notification.notificationId == notificationId,
        );
      },
      builder: (context, notification) {
        notification = notification ?? NotificationModel.fakeData;
        return InkWell(
          onTap: notification.notificationId > 0
              ? () {
                  if (notification?.unread != false) {
                    context.read<NotificationBloc>().add(
                        NotificationsMarked(id: notification?.notificationId));
                  }
                  if (notification?.args?.ticketId != null) {
                    context.push(
                      Routes.getkTicketDetail(
                        ticketId: notification?.args?.ticketId ?? -1,
                        phaseId: notification?.args?.phaseId,
                      ),
                    );
                  }
                }
              : null,
          child: Container(
            decoration: BoxDecoration(
              color: notification.unread == true
                  ? Colors.white
                  : AppColors.kIllustrationNeutral1Color,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: AppPadding.kDefaultPadding,
              horizontal: AppPadding.kMediumPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpace.space12,
              children: [
                Skeleton.shade(
                  child: Badge(
                    isLabelVisible: notification.unread == true,
                    largeSize: 12.0,
                    smallSize: 12.0,
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      notification.unread == true
                          ? Assets.kIcUnreadNoti
                          : Assets.kIcReadNoti,
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSpace.space4,
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        notification.args?.ticketTitle ?? '',
                        style: context.textTheme.kSmallBold
                            .copyWith(color: AppColors.kText1stColor),
                      ),
                      Html(
                        data: notification.message ?? '',
                        style: {
                          "*": Style(
                            margin: Margins.zero,
                            padding: HtmlPaddings.zero,
                            fontSize: FontSize.medium,
                          ),
                        },
                      ),
                      Text(
                        notification.recordedTime?.toFormattedDate() ?? '',
                        style: context.textTheme.kXSmallMedium
                            .copyWith(color: AppColors.kTextHintColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
