class UploadSongModel {
  bool? status;
  String? songId;
  String? msg;

  UploadSongModel({this.status, this.songId, this.msg});

  UploadSongModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    songId = json['songId'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['songId'] = this.songId;
    data['msg'] = this.msg;
    return data;
  }
}
