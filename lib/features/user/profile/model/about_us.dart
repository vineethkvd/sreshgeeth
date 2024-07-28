class AboutUsModel {
  String? userAbout;

  AboutUsModel({this.userAbout});

  AboutUsModel.fromJson(Map<String, dynamic> json) {
    userAbout = json['user_about'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_about'] = this.userAbout;
    return data;
  }
}