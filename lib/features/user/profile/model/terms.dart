class TermsModel {
  String? userTerm;

  TermsModel({this.userTerm});

  TermsModel.fromJson(Map<String, dynamic> json) {
    userTerm = json['user_term'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_term'] = this.userTerm;
    return data;
  }
}
