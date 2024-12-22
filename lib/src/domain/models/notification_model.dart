import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification_module/src/domain/models/notification_args_model.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    final NotificationArgsModel? args,
    final String? message,
    final String? recordedTime,
    final bool? unread,
    @Default(-1) @JsonKey(name: 'notificationID') final int notificationId,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  static const fakeData = NotificationModel(
    notificationId: -1,
    args: NotificationArgsModel.fakeData,
    message: 'Notification message',
  );
}
