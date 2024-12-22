import 'package:notification_module/src/domain/models/notification_model.dart';

abstract class NotificationRepository {
  Future<List<NotificationModel>> getAllNotifications({required int page});

  Future<bool> markNotification({required dynamic id});
}
