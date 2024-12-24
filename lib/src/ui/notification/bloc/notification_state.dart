part of 'notification_bloc.dart';

enum NotificationStatus { initial, success, error }

class NotificationState extends Equatable {
  final NotificationStatus status;
  final List<NotificationModel> notifications;
  final bool hasReachedMax;

  NotificationState({
    this.status = NotificationStatus.initial,
    List<NotificationModel>? notifications,
    this.hasReachedMax = false,
  }) : notifications = notifications ??
            List.filled(
              _notificationLimit,
              NotificationModel.fakeData,
            );

  NotificationState copyWith({
    NotificationStatus? status,
    List<NotificationModel>? notifications,
    bool? hasReachedMax,
  }) {
    return NotificationState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, notifications, hasReachedMax];

  bool get isInitial => status == NotificationStatus.initial;
}
