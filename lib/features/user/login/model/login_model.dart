import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: "status")
    bool? status,
    @JsonKey(name: "msg")
    String? msg,
    @JsonKey(name: "phone")
    String? phone,
    @JsonKey(name: "otp")
    int? otp,
    @JsonKey(name: "data")
    List<Data>? data,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "cus_id")
    int? cusId,
    @JsonKey(name: "unique_id")
    dynamic uniqueId,
    @JsonKey(name: "cus_name")
    String? cusName,
    @JsonKey(name: "cus_status")
    int? cusStatus,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
