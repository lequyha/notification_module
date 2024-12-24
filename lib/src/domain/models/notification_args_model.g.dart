// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_args_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationArgsModelImpl _$$NotificationArgsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationArgsModelImpl(
      ticketTitle: json['ticketTitle'] as String?,
      phaseId: (json['phaseId'] as num?)?.toInt(),
      approvalId: (json['approvalId'] as num?)?.toInt(),
      phaseOutputId: (json['phaseOutputId'] as num?)?.toInt(),
      relationshipId: (json['relationshipId'] as num?)?.toInt(),
      ticketId: (json['ticketId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NotificationArgsModelImplToJson(
        _$NotificationArgsModelImpl instance) =>
    <String, dynamic>{
      if (instance.ticketTitle case final value?) 'ticketTitle': value,
      if (instance.phaseId case final value?) 'phaseId': value,
      if (instance.approvalId case final value?) 'approvalId': value,
      if (instance.phaseOutputId case final value?) 'phaseOutputId': value,
      if (instance.relationshipId case final value?) 'relationshipId': value,
      if (instance.ticketId case final value?) 'ticketId': value,
    };
