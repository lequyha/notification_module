part of 'notification_bloc.dart';

sealed class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object> get props => [];
}

final class NotificationsFetched extends NotificationEvent {
  const NotificationsFetched();
}

final class NotificationsRefreshed extends NotificationEvent {
  const NotificationsRefreshed();
}

final class NotificationsMarked extends NotificationEvent {
  final dynamic id;

  const NotificationsMarked({required this.id});

  @override
  List<Object> get props => [id];
}
