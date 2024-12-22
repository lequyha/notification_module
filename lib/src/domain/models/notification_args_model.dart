import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_args_model.freezed.dart';

part 'notification_args_model.g.dart';

@freezed
class NotificationArgsModel with _$NotificationArgsModel {
  const NotificationArgsModel._();

  const factory NotificationArgsModel({
    final String? ticketTitle,
    final int? phaseId,
    final int? approvalId,
    final int? phaseOutputId,
    final int? relationshipId,
    final int? ticketId,
  }) = _NotificationArgsModel;

  static const fakeData = NotificationArgsModel(
    ticketTitle: 'Ticket title',
  );

  factory NotificationArgsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationArgsModelFromJson(json);
}
