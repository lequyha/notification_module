import 'package:core_module/core_module.dart';
import 'package:core_module/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_module/src/ui/notification/bloc/notification_bloc.dart';
import 'package:notification_module/src/ui/notification/widgets/notification_list_loading.dart';
import 'package:notification_module/src/ui/notification/widgets/notification_list_success.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NotificationBloc>()..add(const NotificationsFetched()),
      child: SafeArea(
        child: Stack(
          children: [
            const HeaderBanner(),
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                context.appLocalizations!.notification,
                style: context.textTheme.kBaseSemibold,
              ),
              centerTitle: true,
              elevation: 0.0,
              actions: [
                BlocBuilder<NotificationBloc, NotificationState>(
                  buildWhen: (previous, current) =>
                      previous.status != current.status,
                  builder: (context, state) {
                    return Visibility(
                      visible: !state.isInitial,
                      child: IconButton(
                        icon: const Icon(Icons.done_all),
                        onPressed: () => context
                            .read<NotificationBloc>()
                            .add(const NotificationsMarked(id: 'all')),
                      ),
                    );
                  },
                )
              ],
            ),
            Positioned.fill(
              top: kToolbarHeight,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(AppBorderRadius.kLargeBorderRadius),
                ),
                child: BlocBuilder<NotificationBloc, NotificationState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case NotificationStatus.error:
                        return const Center(
                            child: Text('failed to fetch posts'));
                      case NotificationStatus.success:
                        return const NotificationListSuccess();
                      case NotificationStatus.initial:
                        return const NotificationListLoading();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
