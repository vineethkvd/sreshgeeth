class PrivacyModel {
  String? userPolicy;

  PrivacyModel({this.userPolicy});

  PrivacyModel.fromJson(Map<String, dynamic> json) {
    userPolicy = json['user_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_policy'] = this.userPolicy;
    return data;
  }
}
