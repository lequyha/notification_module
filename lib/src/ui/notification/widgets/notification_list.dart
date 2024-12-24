import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_module/src/ui/notification/bloc/notification_bloc.dart';
import 'package:notification_module/src/ui/notification/widgets/notification_option.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListSuccessState();
}

class _NotificationListSuccessState extends State<NotificationList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<NotificationBloc>().add(const NotificationsFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        if (state.notifications.isEmpty) {
          return const Center(child: Text('no posts'));
        }
        return RefreshIndicator(
          onRefresh: () async => context
              .read<NotificationBloc>()
              .add(const NotificationsRefreshed()),
          child: Skeletonizer(
            enabled: state.isInitial,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return index >= state.notifications.length
                    ? const BottomLoader()
                    : NotificationOption(
                        notificationId:
                            state.notifications[index].notificationId,
                      );
              },
              itemCount: state.hasReachedMax
                  ? state.notifications.length
                  : state.notifications.length + 1,
              controller: _scrollController,
              separatorBuilder: (_, __) => const Divider(
                height: 1.0,
                color: AppColors.kBorderLineColor,
                thickness: 1.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
