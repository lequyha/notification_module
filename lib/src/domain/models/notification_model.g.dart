// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      args: json['args'] == null
          ? null
          : NotificationArgsModel.fromJson(
              json['args'] as Map<String, dynamic>),
      message: json['message'] as String?,
      recordedTime: json['recordedTime'] as String?,
      unread: json['unread'] as bool?,
      notificationId: (json['notificationID'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'args': instance.args,
      'message': instance.message,
      'recordedTime': instance.recordedTime,
      'unread': instance.unread,
      'notificationID': instance.notificationId,
    };
