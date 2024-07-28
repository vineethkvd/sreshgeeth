class SupportModel {
  String? support;
  String? helpline;

  SupportModel({this.support, this.helpline});

  SupportModel.fromJson(Map<String, dynamic> json) {
    support = json['Support'];
    helpline = json['Helpline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Support'] = this.support;
    data['Helpline'] = this.helpline;
    return data;
  }
}
