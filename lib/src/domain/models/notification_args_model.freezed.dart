// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_args_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationArgsModel _$NotificationArgsModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationArgsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationArgsModel {
  String? get ticketTitle => throw _privateConstructorUsedError;
  int? get phaseId => throw _privateConstructorUsedError;
  int? get approvalId => throw _privateConstructorUsedError;
  int? get phaseOutputId => throw _privateConstructorUsedError;
  int? get relationshipId => throw _privateConstructorUsedError;
  int? get ticketId => throw _privateConstructorUsedError;

  /// Serializes this NotificationArgsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationArgsModelCopyWith<NotificationArgsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationArgsModelCopyWith<$Res> {
  factory $NotificationArgsModelCopyWith(NotificationArgsModel value,
          $Res Function(NotificationArgsModel) then) =
      _$NotificationArgsModelCopyWithImpl<$Res, NotificationArgsModel>;
  @useResult
  $Res call(
      {String? ticketTitle,
      int? phaseId,
      int? approvalId,
      int? phaseOutputId,
      int? relationshipId,
      int? ticketId});
}

/// @nodoc
class _$NotificationArgsModelCopyWithImpl<$Res,
        $Val extends NotificationArgsModel>
    implements $NotificationArgsModelCopyWith<$Res> {
  _$NotificationArgsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketTitle = freezed,
    Object? phaseId = freezed,
    Object? approvalId = freezed,
    Object? phaseOutputId = freezed,
    Object? relationshipId = freezed,
    Object? ticketId = freezed,
  }) {
    return _then(_value.copyWith(
      ticketTitle: freezed == ticketTitle
          ? _value.ticketTitle
          : ticketTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseId: freezed == phaseId
          ? _value.phaseId
          : phaseId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalId: freezed == approvalId
          ? _value.approvalId
          : approvalId // ignore: cast_nullable_to_non_nullable
              as int?,
      phaseOutputId: freezed == phaseOutputId
          ? _value.phaseOutputId
          : phaseOutputId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipId: freezed == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationArgsModelImplCopyWith<$Res>
    implements $NotificationArgsModelCopyWith<$Res> {
  factory _$$NotificationArgsModelImplCopyWith(
          _$NotificationArgsModelImpl value,
          $Res Function(_$NotificationArgsModelImpl) then) =
      __$$NotificationArgsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ticketTitle,
      int? phaseId,
      int? approvalId,
      int? phaseOutputId,
      int? relationshipId,
      int? ticketId});
}

/// @nodoc
class __$$NotificationArgsModelImplCopyWithImpl<$Res>
    extends _$NotificationArgsModelCopyWithImpl<$Res,
        _$NotificationArgsModelImpl>
    implements _$$NotificationArgsModelImplCopyWith<$Res> {
  __$$NotificationArgsModelImplCopyWithImpl(_$NotificationArgsModelImpl _value,
      $Res Function(_$NotificationArgsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketTitle = freezed,
    Object? phaseId = freezed,
    Object? approvalId = freezed,
    Object? phaseOutputId = freezed,
    Object? relationshipId = freezed,
    Object? ticketId = freezed,
  }) {
    return _then(_$NotificationArgsModelImpl(
      ticketTitle: freezed == ticketTitle
          ? _value.ticketTitle
          : ticketTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      phaseId: freezed == phaseId
          ? _value.phaseId
          : phaseId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalId: freezed == approvalId
          ? _value.approvalId
          : approvalId // ignore: cast_nullable_to_non_nullable
              as int?,
      phaseOutputId: freezed == phaseOutputId
          ? _value.phaseOutputId
          : phaseOutputId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationshipId: freezed == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationArgsModelImpl extends _NotificationArgsModel {
  const _$NotificationArgsModelImpl(
      {this.ticketTitle,
      this.phaseId,
      this.approvalId,
      this.phaseOutputId,
      this.relationshipId,
      this.ticketId})
      : super._();

  factory _$NotificationArgsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationArgsModelImplFromJson(json);

  @override
  final String? ticketTitle;
  @override
  final int? phaseId;
  @override
  final int? approvalId;
  @override
  final int? phaseOutputId;
  @override
  final int? relationshipId;
  @override
  final int? ticketId;

  @override
  String toString() {
    return 'NotificationArgsModel(ticketTitle: $ticketTitle, phaseId: $phaseId, approvalId: $approvalId, phaseOutputId: $phaseOutputId, relationshipId: $relationshipId, ticketId: $ticketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationArgsModelImpl &&
            (identical(other.ticketTitle, ticketTitle) ||
                other.ticketTitle == ticketTitle) &&
            (identical(other.phaseId, phaseId) || other.phaseId == phaseId) &&
            (identical(other.approvalId, approvalId) ||
                other.approvalId == approvalId) &&
            (identical(other.phaseOutputId, phaseOutputId) ||
                other.phaseOutputId == phaseOutputId) &&
            (identical(other.relationshipId, relationshipId) ||
                other.relationshipId == relationshipId) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ticketTitle, phaseId, approvalId,
      phaseOutputId, relationshipId, ticketId);

  /// Create a copy of NotificationArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationArgsModelImplCopyWith<_$NotificationArgsModelImpl>
      get copyWith => __$$NotificationArgsModelImplCopyWithImpl<
          _$NotificationArgsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationArgsModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationArgsModel extends NotificationArgsModel {
  const factory _NotificationArgsModel(
      {final String? ticketTitle,
      final int? phaseId,
      final int? approvalId,
      final int? phaseOutputId,
      final int? relationshipId,
      final int? ticketId}) = _$NotificationArgsModelImpl;
  const _NotificationArgsModel._() : super._();

  factory _NotificationArgsModel.fromJson(Map<String, dynamic> json) =
      _$NotificationArgsModelImpl.fromJson;

  @override
  String? get ticketTitle;
  @override
  int? get phaseId;
  @override
  int? get approvalId;
  @override
  int? get phaseOutputId;
  @override
  int? get relationshipId;
  @override
  int? get ticketId;

  /// Create a copy of NotificationArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationArgsModelImplCopyWith<_$NotificationArgsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
