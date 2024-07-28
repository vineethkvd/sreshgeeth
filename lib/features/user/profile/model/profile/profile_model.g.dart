// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: json['status'] as String? ?? '',
      profile: (json['Profile'] as List<dynamic>?)
              ?.map((e) => Profile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activePlan: (json['active_plan'] as List<dynamic>?)
              ?.map((e) => ActivePlan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Profile': instance.profile,
      'active_plan': instance.activePlan,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      rjCusId: (json['rj_cus_id'] as num?)?.toInt() ?? 0,
      rjCusName: json['rj_cus_name'] as String? ?? '',
      rjCusEmail: json['rj_cus_email'] as String? ?? '',
      rjCusPhone: json['rj_cus_phone'] as String? ?? '',
      rjCusGender: json['rj_cus_gender'] as String? ?? '',
      rjCusCity: (json['rj_cus_city'] as num?)?.toInt() ?? 0,
      rjCusState: (json['rj_cus_state'] as num?)?.toInt() ?? 0,
      rjCusCountry: (json['rj_cus_country'] as num?)?.toInt() ?? 0,
      rjCusChurch: (json['rj_cus_church'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'rj_cus_id': instance.rjCusId,
      'rj_cus_name': instance.rjCusName,
      'rj_cus_email': instance.rjCusEmail,
      'rj_cus_phone': instance.rjCusPhone,
      'rj_cus_gender': instance.rjCusGender,
      'rj_cus_city': instance.rjCusCity,
      'rj_cus_state': instance.rjCusState,
      'rj_cus_country': instance.rjCusCountry,
      'rj_cus_church': instance.rjCusChurch,
    };

_$ActivePlanImpl _$$ActivePlanImplFromJson(Map<String, dynamic> json) =>
    _$ActivePlanImpl(
      planId: (json['plan_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      heading1: json['heading_1'] as String? ?? '',
      heading2: json['heading_2'] as String? ?? '',
      heading3: json['heading_3'] as String? ?? '',
      heading4: json['heading_4'] as String? ?? '',
      backgroundColor: json['background_color'] as String? ?? '',
      validityInDays: (json['validity_in_days'] as num?)?.toInt() ?? 0,
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      validityInMonth: (json['validity_in_month'] as num?)?.toInt() ?? 0,
      startDate: json['start_date'] as String? ?? '',
      expiryDate: json['expiry_date'] as String? ?? '',
    );

Map<String, dynamic> _$$ActivePlanImplToJson(_$ActivePlanImpl instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'title': instance.title,
      'heading_1': instance.heading1,
      'heading_2': instance.heading2,
      'heading_3': instance.heading3,
      'heading_4': instance.heading4,
      'background_color': instance.backgroundColor,
      'validity_in_days': instance.validityInDays,
      'amount': instance.amount,
      'validity_in_month': instance.validityInMonth,
      'start_date': instance.startDate,
      'expiry_date': instance.expiryDate,
    };
