import 'package:core_module/core_module.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:notification_module/src/domain/models/notification_model.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_service.g.dart';

@RestApi()
abstract class NotificationService {
  factory NotificationService(Dio dio, {String baseUrl}) = _NotificationService;

  static NotificationService create(Dio dio) {
    return NotificationService(dio,
        baseUrl: '/rest/sms/latest/integration-notification');
  }

  @GET('/list?page={page}')
  Future<HttpResponse<BaseResponseModel<NotificationModel>>>
      getAllNotifications({
    @Path('page') required int page,
  });

  @PUT('/read/{id}')
  Future<HttpResponse<BaseResponseModel>> markNotification({
    @Path('id') required dynamic id,
  });
}
