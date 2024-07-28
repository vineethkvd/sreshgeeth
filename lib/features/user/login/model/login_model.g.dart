// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      phone: json['phone'] as String?,
      otp: (json['otp'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'phone': instance.phone,
      'otp': instance.otp,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      cusId: (json['cus_id'] as num?)?.toInt(),
      uniqueId: json['unique_id'],
      cusName: json['cus_name'] as String?,
      cusStatus: (json['cus_status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'cus_id': instance.cusId,
      'unique_id': instance.uniqueId,
      'cus_name': instance.cusName,
      'cus_status': instance.cusStatus,
    };
