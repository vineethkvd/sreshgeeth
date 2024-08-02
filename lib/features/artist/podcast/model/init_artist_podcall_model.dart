class InitArtistPodCallModel {
  int? code;
  String? message;
  String? requestId;
  Data? data;

  InitArtistPodCallModel({this.code, this.message, this.requestId, this.data});

  InitArtistPodCallModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['Message'];
    requestId = json['RequestId'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Code'] = this.code;
    data['Message'] = this.message;
    data['RequestId'] = this.requestId;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? taskId;

  Data({this.taskId});

  Data.fromJson(Map<String, dynamic> json) {
    taskId = json['TaskId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TaskId'] = this.taskId;
    return data;
  }
}
