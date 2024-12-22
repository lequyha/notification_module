import 'package:core_module/core_module.dart';
import 'package:notification_module/src/data/service/notification_service.dart';
import 'package:notification_module/src/domain/models/notification_model.dart';
import 'package:notification_module/src/domain/remote/notification_repository.dart';

class NotificationRepositoryImpl extends BaseApiRepository
    implements NotificationRepository {
  final NotificationService _notificationService;

  NotificationRepositoryImpl({required NotificationService notificationService})
      : _notificationService = notificationService;

  @override
  Future<List<NotificationModel>> getAllNotifications(
      {required int page}) async {
    final dataState = await getStateOf<BaseResponseModel<NotificationModel>>(
      request: () => _notificationService.getAllNotifications(page: page),
    );
    if (dataState is DataSuccess) {
      return dataState.data?.dataList ?? [];
    } else {
      throw dataState.errorMessage;
    }
  }

  @override
  Future<bool> markNotification({required dynamic id}) async {
    final dataState = await getStateOf<BaseResponseModel>(
      request: () => _notificationService.markNotification(id: id),
    );
    if (dataState is DataSuccess) {
      return true;
    } else {
      throw dataState.errorMessage;
    }
  }
}
