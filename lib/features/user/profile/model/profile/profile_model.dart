import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: "status") @Default('') String? status,
    @JsonKey(name: "Profile") @Default([]) List<Profile>? profile,
    @JsonKey(name: "active_plan") @Default([]) List<ActivePlan>? activePlan,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    @JsonKey(name: "rj_cus_id") @Default(0) int? rjCusId,
    @JsonKey(name: "rj_cus_name") @Default('') String? rjCusName,
    @JsonKey(name: "rj_cus_email") @Default('') String? rjCusEmail,
    @JsonKey(name: "rj_cus_phone") @Default('') String? rjCusPhone,
    @JsonKey(name: "rj_cus_gender") @Default('') String? rjCusGender,
    @JsonKey(name: "rj_cus_city") @Default(0) int? rjCusCity,
    @JsonKey(name: "rj_cus_state") @Default(0) int? rjCusState,
    @JsonKey(name: "rj_cus_country") @Default(0) int? rjCusCountry,
    @JsonKey(name: "rj_cus_church") @Default(0) int? rjCusChurch,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class ActivePlan with _$ActivePlan {
  const factory ActivePlan({
    @JsonKey(name: "plan_id") @Default(0) int? planId,
    @JsonKey(name: "title") @Default('') String? title,
    @JsonKey(name: "heading_1") @Default('') String? heading1,
    @JsonKey(name: "heading_2") @Default('') String? heading2,
    @JsonKey(name: "heading_3") @Default('') String? heading3,
    @JsonKey(name: "heading_4") @Default('') String? heading4,
    @JsonKey(name: "background_color") @Default('') String? backgroundColor,
    @JsonKey(name: "validity_in_days") @Default(0) int? validityInDays,
    @JsonKey(name: "amount") @Default(0) int? amount,
    @JsonKey(name: "validity_in_month") @Default(0) int? validityInMonth,
    @JsonKey(name: "start_date") @Default('') String? startDate,
    @JsonKey(name: "expiry_date") @Default('') String? expiryDate,
  }) = _ActivePlan;

  factory ActivePlan.fromJson(Map<String, dynamic> json) =>
      _$ActivePlanFromJson(json);
}
