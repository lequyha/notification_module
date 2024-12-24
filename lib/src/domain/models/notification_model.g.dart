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
      if (instance.args?.toJson() case final value?) 'args': value,
      if (instance.message case final value?) 'message': value,
      if (instance.recordedTime case final value?) 'recordedTime': value,
      if (instance.unread case final value?) 'unread': value,
      'notificationID': instance.notificationId,
    };
