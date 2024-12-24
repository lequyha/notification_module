import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:notification_module/src/domain/models/notification_model.dart';
import 'package:notification_module/src/domain/remote/notification_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'notification_event.dart';
part 'notification_state.dart';

const _notificationLimit = 15;
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _notificationRepository;

  NotificationBloc({
    required NotificationRepository notificationRepository,
  })  : _notificationRepository = notificationRepository,
        super(NotificationState()) {
    on<NotificationsFetched>(
      _onNotificationsFetched,
      transformer: throttleDroppable(throttleDuration),
    );
    on<NotificationsRefreshed>(_onNotificationsRefreshed);
    on<NotificationsMarked>(_onNotificationsMarked);
  }

  Future<void> _onNotificationsFetched(
    NotificationsFetched event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      final notifications = await _notificationRepository.getAllNotifications(
          page: state.isInitial
              ? 0
              : state.notifications.length ~/ _notificationLimit);
      emit(
        state.copyWith(
          status: NotificationStatus.success,
          notifications: state.isInitial
              ? notifications
              : [...state.notifications, ...notifications],
          hasReachedMax: notifications.length < _notificationLimit,
        ),
      );
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      emit(state.copyWith(status: NotificationStatus.error));
    }
  }

  Future<void> _onNotificationsRefreshed(
    NotificationsRefreshed event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      emit(state.copyWith(status: NotificationStatus.initial));
      final notifications =
          await _notificationRepository.getAllNotifications(page: 0);
      emit(
        state.copyWith(
          status: NotificationStatus.success,
          notifications: notifications,
          hasReachedMax: notifications.isEmpty,
        ),
      );
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      emit(state.copyWith(status: NotificationStatus.error));
    }
  }

  Future<void> _onNotificationsMarked(
    NotificationsMarked event,
    Emitter<NotificationState> emit,
  ) async {
    final currentState = state;
    final updatedNotifications = currentState.notifications.map((notification) {
      if (notification.notificationId == event.id || event.id == 'all') {
        return notification.copyWith(unread: false);
      }
      return notification;
    }).toList();
    emit(state.copyWith(notifications: updatedNotifications));
    try {
      _notificationRepository.markNotification(id: event.id);
    } catch (error, trace) {
      final rollbackNotifications = currentState.notifications;
      onError(error, trace);
      emit(state.copyWith(notifications: rollbackNotifications));
    }
  }
}
