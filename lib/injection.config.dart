// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:notification_module/src/data/repositories/remote/notification_repository_impl.dart'
    as _i977;
import 'package:notification_module/src/data/service/notification_service.dart'
    as _i289;
import 'package:notification_module/src/domain/remote/notification_repository.dart'
    as _i700;
import 'package:notification_module/src/ui/notification/bloc/notification_bloc.dart'
    as _i370;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i289.NotificationService>(
        () => _i289.NotificationService.create(gh<_i361.Dio>()));
    gh.lazySingleton<_i700.NotificationRepository>(() =>
        _i977.NotificationRepositoryImpl(
            notificationService: gh<_i289.NotificationService>()));
    gh.factory<_i370.NotificationBloc>(() => _i370.NotificationBloc(
        notificationRepository: gh<_i700.NotificationRepository>()));
    return this;
  }
}
