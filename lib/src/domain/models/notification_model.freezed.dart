// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  NotificationArgsModel? get args => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get recordedTime => throw _privateConstructorUsedError;
  bool? get unread => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationID')
  int get notificationId => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {NotificationArgsModel? args,
      String? message,
      String? recordedTime,
      bool? unread,
      @JsonKey(name: 'notificationID') int notificationId});

  $NotificationArgsModelCopyWith<$Res>? get args;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = freezed,
    Object? message = freezed,
    Object? recordedTime = freezed,
    Object? unread = freezed,
    Object? notificationId = null,
  }) {
    return _then(_value.copyWith(
      args: freezed == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as NotificationArgsModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      recordedTime: freezed == recordedTime
          ? _value.recordedTime
          : recordedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      unread: freezed == unread
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationArgsModelCopyWith<$Res>? get args {
    if (_value.args == null) {
      return null;
    }

    return $NotificationArgsModelCopyWith<$Res>(_value.args!, (value) {
      return _then(_value.copyWith(args: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationArgsModel? args,
      String? message,
      String? recordedTime,
      bool? unread,
      @JsonKey(name: 'notificationID') int notificationId});

  @override
  $NotificationArgsModelCopyWith<$Res>? get args;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = freezed,
    Object? message = freezed,
    Object? recordedTime = freezed,
    Object? unread = freezed,
    Object? notificationId = null,
  }) {
    return _then(_$NotificationModelImpl(
      args: freezed == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as NotificationArgsModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      recordedTime: freezed == recordedTime
          ? _value.recordedTime
          : recordedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      unread: freezed == unread
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl extends _NotificationModel {
  const _$NotificationModelImpl(
      {this.args,
      this.message,
      this.recordedTime,
      this.unread,
      @JsonKey(name: 'notificationID') this.notificationId = -1})
      : super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final NotificationArgsModel? args;
  @override
  final String? message;
  @override
  final String? recordedTime;
  @override
  final bool? unread;
  @override
  @JsonKey(name: 'notificationID')
  final int notificationId;

  @override
  String toString() {
    return 'NotificationModel(args: $args, message: $message, recordedTime: $recordedTime, unread: $unread, notificationId: $notificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.args, args) || other.args == args) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.recordedTime, recordedTime) ||
                other.recordedTime == recordedTime) &&
            (identical(other.unread, unread) || other.unread == unread) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, args, message, recordedTime, unread, notificationId);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  const factory _NotificationModel(
          {final NotificationArgsModel? args,
          final String? message,
          final String? recordedTime,
          final bool? unread,
          @JsonKey(name: 'notificationID') final int notificationId}) =
      _$NotificationModelImpl;
  const _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  NotificationArgsModel? get args;
  @override
  String? get message;
  @override
  String? get recordedTime;
  @override
  bool? get unread;
  @override
  @JsonKey(name: 'notificationID')
  int get notificationId;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
